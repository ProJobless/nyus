<?php if ( ! defined('BASEPATH') ) exit('No direct script access allowed');

/**
 * User - Publish Tab
 *
 * @package		Solspace:User
 * @author		Solspace, Inc.
 * @copyright	Copyright (c) 2008-2013, Solspace, Inc.
 * @link		http://solspace.com/docs/user
 * @license		http://www.solspace.com/license_agreement
 * @version		3.4.0
 * @filesource	user/tab.user.php
 */

require_once 'addon_builder/module_builder.php';

class User_tab extends Module_builder_user
{
	// --------------------------------------------------------------------

	/**
	 *	Constructor
	 *
	 *	@access		public
	 *	@return		null
	 */

	public function __construct()
	{
		parent::Module_builder_user('user');
	}
	/* END constructor */

	// --------------------------------------------------------------------

	/**
	 *	Publish Tabs
	 *
	 *	Creates the fields that will be displayed on the Publish page for EE 2.x
	 *
	 *	@access		public
	 *	@param		integer
	 *	@param		integer
	 *	@return		array
	 */

	public function publish_tabs($channel_id, $entry_id = '')
	{
		// @bugfix - EE 2.x on submit of an entry calls this method with incorrect arguments
		if (is_array($channel_id))
		{
			$entry_id	= $channel_id[1];
			$channel_id	= $channel_id[0];
		}

		if (REQ != 'CP')
		{
			return array();
		}

		/** --------------------------------------------
		/**  Publish Tab Name
		/** --------------------------------------------*/

		$this->EE->load->model('user_model');

		$extension_settings = $this->EE->user_model->get_channel_ids();

		if (empty($extension_settings))
		{
			return array();
		}

		// Load the string helper
		$this->EE->load->helper('string');

		/** --------------------------------------------
		/**  Do we have a Publish Tab for this Channel?
		/** --------------------------------------------*/

		if ( empty($extension_settings[$channel_id]))
		{
			return array();
		}

		/** --------------------------------------------
		/**  Add in our JavaScript/CSS
		/** --------------------------------------------*/

		if (is_object($this->EE->cp))
		{
			$this->EE->cp->add_js_script(
				array(
					'<script type="text/javascript" charset="utf-8" src="' .
					$this->base .
					'&solspace_user_nocache=' . time() .
					'&method=ajax'.
					'&solspace_user_ajax=publish_tab_javascript&channel_id=' .
					$channel_id . (($this->EE->input->get('entry_id') !== FALSE) ? '&entry_id=' .
					$this->EE->input->get('entry_id') : '') . '"></script>'
				),
				FALSE
			);
		}

		/** --------------------------------------------
		/**  User Authors Language File
		/** --------------------------------------------*/

		$this->EE->lang->loadfile('user');

		/** --------------------------------------------
		/**  Determine Current User Authors
		/** --------------------------------------------*/

		//$user_authors	= array('0' => lang('choose_a_primary_author'));
		$user_authors = array();
		$primary_author = 0;

		if ( ! empty($entry_id))
		{
			$query	= $this->EE->db->query(
				"SELECT 	ua.author_id, ua.principal, m.screen_name
				 FROM 		exp_user_authors ua, exp_members m
				 WHERE 		ua.author_id != '0'
				 AND 		ua.entry_id = '".$this->EE->db->escape_str($entry_id)."'
				 AND 		ua.author_id = m.member_id
				 ORDER BY 	m.screen_name"
			);

			foreach($query->result_array() as $row)
			{
				if ($row['principal'] == 'y')
				{
					$primary_author = $row['author_id'];
				}

				$user_authors[$row['author_id']] = $row['screen_name'];
			}
		}

		//needed for the assigned authors field
		$assigned_authors = "";

		foreach($user_authors AS $user_id => $user_name)
		{
			$assigned_authors .= $user_id . ",";
		}

		$assigned_authors = substr($assigned_authors, 0 , -1);

		/** --------------------------------------------
		/**  Build Fields
		/** --------------------------------------------*/

		$settings[] = array(
			'field_id'				=> 'solspace_user_browse_authors',
			'field_label'			=> lang('assigned_authors'),
			'field_required' 		=> 'n',
			'field_data'			=> $assigned_authors,
			'field_ta_rows'			=> 5,
			'field_fmt'				=> '',
			'field_instructions' 	=> '',
			'field_fmt_options'		=> array(),
			'field_text_direction'	=> 'ltr',
			'field_type' 			=> 'textarea'
		);

		$settings[] = array(
			'field_id'				=> 'solspace_user_primary_author',
			'field_label'			=> lang('primary_author'),
			'field_required' 		=> 'n',
			'field_data'			=> $primary_author,
			'field_ta_rows'			=> 5,
			'field_fmt'				=> '',
			'field_instructions' 	=> '',
			'field_pre_populate'	=> 'n',
			'field_fmt_options'		=> array(),
			'field_text_direction'	=> 'ltr',
			'field_type' 			=> 'text',
			'field_maxl'				=> 400
		);

		return $settings;
	}
	/* END publish_tabs() */

	// --------------------------------------------------------------------

	/**
	 *	Validate Submitted Publish data
	 *
	 *	Allows you to validate the data after the publish form has been submitted but before any
	 *	additions to the database. Returns FALSE if there are no errors, an array of errors otherwise.
	 *
	 *	@access		public
	 *	@param		array
	 *	@return		bool|array
	 */

	public function validate_publish($params)
	{
		return FALSE;
	}
	/* END validate_publish() */

	// --------------------------------------------------------------------

	/**
	 *	Insert Publish Form Data
	 *
	 *	Allows the insertion of data after the core insert/update has been done, thus making
	 *	available the current $entry_id. Returns nothing.
	 *
	 *	@access		public
	 *	@param		array
	 *	@return		null
	 */

	public function publish_data_db($params)
	{
		if( ! isset($params['mod_data']['solspace_user_browse_authors']))
		{
			return;
		}

		//delete from DB if exists and replace
		$this->EE->db->query(
			"DELETE
			 FROM exp_user_authors
			 WHERE entry_id = '" .
			$this->EE->db->escape_str($params['entry_id']) . "'"
		);

		//users from input field are comma delimited
		$users = preg_split(
			"/[\s]*,[\s]*/is",
			$params['mod_data']['solspace_user_browse_authors'],
			-1,
			PREG_SPLIT_NO_EMPTY
		);

		if (empty($users)) return;

		foreach($users AS $user)
		{
			$user = $this->EE->db->escape_str( $user );
		}

		$users_implode = implode(',', $users);

		//get all by screen name if they exist
		$query = $this->EE->db->query(
			"SELECT member_id, screen_name
			 FROM	exp_members
			 WHERE	member_id
			 IN     ($users_implode)"
		);

		//insert each author
		//principal will be matched by screen name
		foreach($query->result_array() AS $row)
		{
			$this->EE->db->query(
				$this->EE->db->insert_string(
					'exp_user_authors',
					array(
						'author_id'		=> $row['member_id'],
						'entry_id'		=> $params['entry_id'],
						'principal'	 	=> (
							trim($params['mod_data']['solspace_user_primary_author']) == $row['member_id']
						) ? 'y' : 'n',
						'entry_date'	=> $this->EE->localize->now
					)
				)
			);
		}

		return;
	}
	/* END publish_data_db() */

	// --------------------------------------------------------------------

	/**
	 *	Entry Delete
	 *
	 *	Called near the end of the entry delete function, this allows you to sync your records if
	 *	any are tied to channel entry_ids.
	 *
	 *	@access		public
	 *	@param		array
	 *	@return		null
	 */

	public function publish_data_delete_db($params)
	{
		$items = array();

		if (! isset($params['entry_ids']) AND isset($params['entry_id']))
		{
			$items[] = $params['entry_id'];
		}
		else
		{
			$items = $params['entry_ids'];
		}

		$ids = implode(', ', $items);

		//delete from DB if exists and replace
		$this->EE->db->query("DELETE FROM exp_user_authors WHERE entry_id IN (" .
			$this->EE->db->escape_str($ids) . ")"
		);

		return;
	}
	/* publish_data_delete_db() */

}
/* END User_tab CLASS */

/* End of file tab.user.php */
/* Location: ./system/expressionengine/third_party/modules/user/tab.user.php */
