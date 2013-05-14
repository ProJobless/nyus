<?php if ( ! defined('EXT')) exit('No direct script access allowed');

/**
 * Friends - Actions
 *
 * Handles all form submissions and action requests used on both user and CP areas of EE.
 *
 * @package		Solspace:Friends
 * @author		Solspace, Inc.
 * @copyright	Copyright (c) 2010-2013, Solspace, Inc.
 * @link		http://solspace.com/docs/friends
 * @license		http://www.solspace.com/license_agreement
 * @version		1.6.0
 * @filesource	friends/act.friends.php
 */

require_once 'addon_builder/addon_builder.php';

class Friends_actions extends Addon_builder_friends
{
	// --------------------------------------------------------------------

	/**
	 * Constructor
	 *
	 * @access	public
	 * @return	null
	 */

	public function __construct()
	{
		parent::__construct();

		// -------------------------------------
		//  Module Installed and What Version?
		// -------------------------------------

		if ($this->database_version() == FALSE OR
			$this->version_compare($this->database_version(), '<', FRIENDS_VERSION))
		{
			return;
		}

		$this->EE->lang->loadfile('friends');
	}
	// END


	// --------------------------------------------------------------------

	/**
	 * Deletes members from a passed list or all non
	 *
	 * @access	public
	 * @return	null
	 */

	public function delete_members_from_friends ( $member_id = 0)
	{
		// --------------------------------
		//  Prep members
		// --------------------------------

		$members = array();
		$not 	 = '';

		if (is_numeric($member_id) AND $member_id > 0)
		{
			$members = $member_id;
		}
		else if (is_array($member_id))
		{
			$members = implode(',', $this->EE->db->escape_str($member_id));
		}
		//if member id is 0 or bad, lets just check all missing
		else
		{
			$not 	 = 'NOT';

			$query = $this->EE->db->query(
				"SELECT member_id
				 FROM 	exp_members"
			);

			foreach ($query->result_array() as $row)
			{
				$members[] = $this->EE->db->escape_str($row['member_id']);
			}

			$members = implode(',', $members);
		}

		// -------------------------------------
		//	sql building
		// -------------------------------------

		$sql	= array();

		$sql[]	= "DELETE FROM 	exp_friends
				   WHERE 		friend_id != 0
				   AND 			( friend_id {$not} IN ( {$members} )
								  OR member_id {$not} IN ( {$members} )
								)";

		$sql[]	= "DELETE FROM 	exp_friends_referrals
				   WHERE 		member_id
				   {$not} IN 	( {$members} )
				   OR 			referrer_id
				   {$not} IN 	( {$members} )";

		$sql[]	= "DELETE FROM 	exp_friends_groups
				   WHERE 		member_id
				   {$not} IN 	( {$members} )";

		$sql[]	= "DELETE FROM 	exp_friends_group_posts
				   WHERE 		member_id
				   {$not} IN 	( {$members} )";

		$sql[]	= "DELETE FROM 	exp_friends_group_entry_posts
				   WHERE 		member_id
				   {$not} IN 	( {$members} )";

		$sql[]	= "DELETE FROM 	exp_friends_group_comments
				   WHERE 		author_id
				   {$not} IN 	( {$members} )";

		$sql[]	= "DELETE FROM 	exp_friends_status
				   WHERE 		member_id
				   {$not} IN 	( {$members} )";

		$sql[]	= "DELETE FROM 	exp_friends_profile_comments
				   WHERE 		author_id
				   {$not} IN 	( {$members} )
				   OR 			friend_id
				   {$not} IN 	( {$members} )";

		$sql[]	= "DELETE FROM 	exp_friends_hugs
				   WHERE 		member_id
				   {$not} IN 	( {$members} )
				   OR 			friend_id
				   {$not} IN 	( {$members} )";

		foreach ( $sql as $q )
		{
			$this->EE->db->query( $q );
		}
	}
	//	End delete_non_existent_members


	// --------------------------------------------------------------------

	/**
	 *  Get the Preferences for This Module
	 *
	 * @access	public
	 * @return	array
	 */

/*	public function module_preferences()
	{
		if (sizeof($this->module_preferences) > 0)
		{
			return $this->module_preferences;
		}

		// --------------------------------------------
		//  Default Values Guaranteed - No money back, method is provided as is... :-)
		// --------------------------------------------

		$sites_query = $this->EE->db->query("SELECT site_id FROM exp_sites ORDER BY site_label");

		foreach($sites_query->result_array() as $row)
		{
			if ( ! isset($this->module_preferences[$row['site_id']]))
			{
				foreach(explode('|', FRIENDS_PREFS) as $preference)
				{
					$this->module_preferences[$row['site_id']][$preference] = '';
				}
			}
		}

		// --------------------------------------------
		//  Values in Database
		// --------------------------------------------

		$query = $this->EE->db->query("SELECT * FROM exp_friends_preferences");

		foreach($query->result_array() as $row)
		{
			$this->module_preferences[$row['site_id']][$row['preference_name']] = $row['preference_value'];
		}

		// Return!

		return $this->module_preferences;
	}
	// END module_preferences()
*/
}
// END Friends_actions Class