<?php if ( ! defined('EXT')) exit('No direct script access allowed');

/**
 * Friends - Hugs Class
 *
 * This class handles Hugs functionality.
 *
 * @package		Solspace:Friends
 * @author		Solspace, Inc.
 * @copyright	Copyright (c) 2010-2013, Solspace, Inc.
 * @link		http://solspace.com/docs/friends
 * @license		http://www.solspace.com/license_agreement
 * @filesource	friends/libraries/Friends_hugs.php
 */

require_once realpath(rtrim(dirname(__FILE__), '/') . '/../mod.friends.php');

class Friends_hugs extends Friends
{
	// --------------------------------------------------------------------

	/**
	 * Hug
	 *
	 * This method sits in a template ad receives a member id in the URI.
	 * The indicated member if validated and a hug is sent to them.
	 *
	 * @access		public
	 * @return		string
	 */

	function hug()
	{
		$hugs_per_hour	= 3;

		$tagdata		= $this->EE->TMPL->tagdata;

		// ----------------------------------------
		// Not logged in?  Fail out gracefully.
		// ----------------------------------------

		if ( $this->EE->session->userdata['member_id'] == 0 )
		{
			$cond['failure']	= TRUE;
			$cond['success']	= FALSE;
			$tagdata			= $this->EE->functions->prep_conditionals( $tagdata, $cond );
			$this->message[]	= lang( 'not_logged_in' );
			return str_replace( LD."friends_message".RD, $this->_prep_message(), $tagdata );
		}

		// ----------------------------------------
		// Dynamic
		// ----------------------------------------

		$this->dynamic	= ! $this->check_no( $this->EE->TMPL->fetch_param('dynamic') );

		// ----------------------------------------
		// Hug label
		// ----------------------------------------

		$hug_label	= 'hug';

		if ( $this->EE->TMPL->fetch_param('hug_label') !== FALSE AND $this->EE->TMPL->fetch_param('hug_label') != '' )
		{
			$hug_label	= $this->EE->TMPL->fetch_param('hug_label');
		}

		// ----------------------------------------
		// Subject
		// ----------------------------------------

		$subject	= str_replace(
			array( '%screen_name%', '%hug%' ),
			array( $this->EE->session->userdata('screen_name'), $hug_label ),
			lang('hug_subject')
		);

		if ( $this->EE->TMPL->fetch_param('subject') !== FALSE AND
			 $this->EE->TMPL->fetch_param('subject') != '' )
		{
			$subject	= $this->EE->TMPL->fetch_param('subject');
		}

		// ----------------------------------------
		// Do we have a valid ID number?
		// ----------------------------------------

		if ( $this->_member_id() === FALSE )
		{
			$cond['failure']	= TRUE;
			$cond['success']	= FALSE;
			$tagdata			= $this->EE->functions->prep_conditionals( $tagdata, $cond );
			$this->message[]	= lang( 'member_not_found' );
			return str_replace( LD."friends_message".RD, $this->_prep_message(), $tagdata );
		}

		// ----------------------------------------
		// Friends only?
		// ----------------------------------------

		if ( $this->EE->TMPL->fetch_param('friends_only') !== FALSE AND $this->EE->TMPL->fetch_param('friends_only') == 'yes' )
		{
			$sql	= "SELECT 		m.email
					   FROM 		exp_friends f
					   LEFT JOIN 	exp_members m
					   ON 			m.member_id = f.friend_id
					   WHERE 		f.reciprocal = 'y'
					   AND 			f.block = 'n'
					   AND 			f.site_id
					   IN 			(".implode( ',', $this->EE->TMPL->site_ids ).")
					   AND 			f.member_id = " . $this->EE->db->escape_str( $this->EE->session->userdata('member_id') ) . "
					   AND 			f.friend_id = " . $this->EE->db->escape_str( $this->member_id ) . "
					   LIMIT 		1";

			$query	= $this->EE->db->query( $sql );

			if ( $query->num_rows() == 0 )
			{
				$cond['failure']	= TRUE;
				$cond['success']	= FALSE;
				$tagdata			= $this->EE->functions->prep_conditionals( $tagdata, $cond );
				$this->message[]	= str_replace(
					'%hug%',
					$hug_label,
					lang( 'reciprocal_friends_only' )
				);
				return str_replace( LD."friends_message".RD, $this->_prep_message(), $tagdata );
			}

			$email	= $query->row('email');
		}
		else
		{
			$sql	= "SELECT 	m.email
					   FROM 	exp_members m
					   WHERE 	m.member_id = " . $this->EE->db->escape_str( $this->member_id ) . "
					   LIMIT 	1";

			$query	= $this->EE->db->query( $sql );

			$email	= $query->row('email');
		}

		// ----------------------------------------
		// Check limits
		// ----------------------------------------

		$sql	= "SELECT 	COUNT(*) AS count
				   FROM 	exp_friends_hugs
				   WHERE 	site_id
				   IN 		(" . implode( ',', $this->EE->TMPL->site_ids ) . ")
				   AND 		member_id = " . $this->EE->db->escape_str( $this->EE->session->userdata('member_id') ) . "
				   AND 		friend_id = " . $this->EE->db->escape_str( $this->member_id ) . "
				   AND 		date > " . ( $this->EE->localize->now - 120 );

		$query	= $this->EE->db->query( $sql );

		if ( $query->num_rows() > 0 AND $query->row('count') == $hugs_per_hour )
		{
			$cond['failure']	= TRUE;
			$cond['success']	= FALSE;
			$tagdata			= $this->EE->functions->prep_conditionals( $tagdata, $cond );
			$this->message[]	= str_replace( '%hug%', $hug_label, lang( 'hug_limit_exceeded' ) );
			return str_replace( LD."friends_message".RD, $this->_prep_message(), $tagdata );
		}

		// ----------------------------------------
		// Send email?
		// ----------------------------------------

		if ( $this->EE->TMPL->fetch_param('notification_template') !== FALSE AND
			 $this->EE->TMPL->fetch_param('notification_template') != '' )
		{
			$data['notification_template']		= $this->EE->TMPL->fetch_param('notification_template');
			$data['email']						= $email;
			$data['member_id']					= $this->member_id;
			$data['from_email']					= $this->EE->session->userdata['email'];
			$data['from_name']					= $this->EE->session->userdata['screen_name'];
			$data['subject']					= $subject;

			if ( $this->_notify( $data ) === FALSE )
			{
				$cond['failure']	= TRUE;
				$cond['success']	= FALSE;
				$tagdata			= $this->EE->functions->prep_conditionals( $tagdata, $cond );
				return str_replace( LD."friends_message".RD, $this->_prep_message(), $tagdata );
			}

			// ----------------------------------------
			// Was the subject parsed in $this->_notify?
			// ----------------------------------------

			if ( ! empty( $this->cache['email_notifications'][ $data['member_id'] ][ 'friends_subject' ] ) )
			{
				$subject	= $this->cache['email_notifications'][ $data['member_id'] ][ 'friends_subject' ];
			}
		}

		// ----------------------------------------
		// Prepare data
		// ----------------------------------------

		$data	= array(
			'member_id'		=> $this->EE->session->userdata('member_id'),
			'friend_id'		=> $this->member_id,
			'site_id'		=> $this->EE->config->item('site_id'),
			'hug_label'		=> $hug_label,
			'email_subject'	=> $subject,
			'email_address'	=> $email,
			'date'			=> $this->EE->localize->now
		);

		// ----------------------------------------
		// Insert data
		// ----------------------------------------

		$this->EE->db->query( $this->EE->db->insert_string( 'exp_friends_hugs', $data ) );

		// ----------------------------------------
		// Recalculate hugs total in exp_members
		// ----------------------------------------

		$query	= $this->EE->db->query(
			"SELECT COUNT(*) AS count
			 FROM 	exp_friends_hugs
			 WHERE 	site_id
			 IN 	(" . implode( ',', $this->EE->TMPL->site_ids ) . ")
			 AND 	friend_id = " . $this->EE->db->escape_str( $this->member_id )
		);

		if ( $query->num_rows() > 0 AND $query->row('count') > 0 )
		{
			$this->EE->db->query(
				$this->EE->db->update_string(
					'exp_members',
					array( 'friends_total_hugs' => $query->row('count') ),
					array( 'member_id' => $this->member_id )
				)
			);
		}

		// ----------------------------------------
		// Return
		// ----------------------------------------

		$cond['failure']	= FALSE;
		$cond['success']	= TRUE;

		$tagdata	= $this->EE->functions->prep_conditionals( $tagdata, $cond );

		// ----------------------------------------
		// Return
		// ----------------------------------------

		$this->message[]	= str_replace( '%hug%', $hug_label, lang( 'hug_successfully_sent' ) );

		return str_replace( LD."friends_message".RD, $this->_prep_message(), $tagdata );
	}

	//	End status

	// --------------------------------------------------------------------

	/**
	 * Hugs
	 *
	 * This method returns to the total number of hugs sent or received,
	 * depending on parameter, of the indicated or currently logged in member.
	 *
	 * @access		public
	 * @return		string
	 */

	function hugs()
	{
		// ----------------------------------------
		// Dynamic
		// ----------------------------------------

		$this->dynamic	= ! $this->check_no( $this->EE->TMPL->fetch_param('dynamic') );

		// ----------------------------------------
		// Set member id
		// ----------------------------------------

		if ( $this->_member_id() === FALSE )
		{
			$this->member_id	= $this->EE->session->userdata( 'member_id' );
		}

		// ----------------------------------------
		// View as sender or recipient
		// ----------------------------------------

		$type	=  ( $this->EE->TMPL->fetch_param('type') == 'sender' ) ? 'sender' : 'recipient';

		// ----------------------------------------
		// Friends only?
		// ----------------------------------------

		$friends_only	= $this->check_yes($this->EE->TMPL->fetch_param('friends_only'));

		// ----------------------------------------
		// Hug label
		// ----------------------------------------

		$hug_label	= 'hug';

		if ( ! in_array($this->EE->TMPL->fetch_param('hug_label'), array(FALSE, '', 'hug') ) )
		{
			$hug_label	= $this->EE->TMPL->fetch_param('hug_label');
		}

		// ----------------------------------------
		// Begin SQL
		// ----------------------------------------

		if ( $type == 'recipient' )
		{
			$sql	= "SELECT 		fh.member_id AS friends_member_id,
									fh.hug_label AS friends_hug_label,
									fh.date AS friends_hug_date
					   FROM 		exp_friends_hugs fh
					   LEFT JOIN 	exp_members m
					   ON 			m.member_id = fh.member_id
					   WHERE 		fh.site_id
					   IN 			(".implode( ',', $this->EE->TMPL->site_ids ).")
					   AND 			fh.hug_label = '" . $this->EE->db->escape_str( $hug_label ) . "'
					   AND 			fh.friend_id = " . $this->EE->db->escape_str( $this->member_id );

			if ( $friends_only === TRUE )
			{
				$sql	.= " AND fh.member_id IN
					(
						SELECT 	friend_id
						FROM 	exp_friends
						WHERE 	f.reciprocal = 'y'
						AND 	f.block = 'n'
						AND 	site_id
						IN 		(".implode( ',', $this->EE->TMPL->site_ids ).")
						AND	 	member_id = " . $this->EE->db->escape_str( $this->member_id ) . "
					)";
			}
		}
		else
		{
			$sql	= "SELECT 		fh.friend_id AS friends_member_id,
									fh.hug_label AS friends_hug_label,
									fh.date AS friends_hug_date
					   FROM 		exp_friends_hugs fh
					   LEFT JOIN 	exp_members m
					   ON 			m.member_id = fh.friend_id
					   WHERE 		fh.site_id
					   IN 			(".implode( ',', $this->EE->TMPL->site_ids ).")
					   AND 			fh.hug_label = '" . $this->EE->db->escape_str( $hug_label ) . "'
					   AND 			fh.member_id = " . $this->EE->db->escape_str( $this->member_id );

			if ( $friends_only === TRUE )
			{
				$sql	.= " AND fh.member_id IN
					(
						SELECT 	member_id
						FROM 	exp_friends
						WHERE 	f.reciprocal = 'y'
						AND 	f.block = 'n'
						AND 	site_id
						IN 		(".implode( ',', $this->EE->TMPL->site_ids ).")
						AND 	friend_id = " . $this->EE->db->escape_str( $this->member_id ) . "
					)";
			}
		}

		//	----------------------------------------
		//	Order
		//	----------------------------------------

		if (
			 in_array( $this->EE->TMPL->fetch_param('order'),
				array(
					'username',
					'screen_name',
					'join_date',
					'last_visit',
					'last_activity',
					'total_entries',
					'total_comments',
					'total_friends',
					'total_reciprocal_friends'
				) ) === TRUE )
		{
			$sql	.= " ORDER BY m." . $this->EE->db->escape_str( $this->EE->TMPL->fetch_param('orderby') ) . "";
		}
		else
		{
			$sql	.= " ORDER BY fh.date";
		}

		//	----------------------------------------
		//	Sort
		//	----------------------------------------

		if ( $this->EE->TMPL->fetch_param('sort') != 'desc' )
		{
			$sql	.= " ASC";
		}
		else
		{
			$sql	.= " DESC";
		}

		// ----------------------------------------
		//   Prep pagination
		// ----------------------------------------

		$sql	= $this->_prep_pagination( $sql );

		//	----------------------------------------
		//	Query
		//	----------------------------------------

		$query	= $this->EE->db->query( $sql );

		$member_ids	= $this->_get_db_ids( array( 'friends_member_id' ), $query );

		if ( count( $member_ids ) == 0 )
		{
			return $this->no_results('friends');
		}

		$this->member_ids	= $member_ids;

		//	----------------------------------------
		//	Loop and parse
		//	----------------------------------------

		$r		= '';
		$count	= 0;

		foreach ( $query->result_array() as $row )
		{
			$count++;
			$row['friends_count'] 			= $count;
			$row['friends_total_results']	= $query->num_rows();

			$tagdata	= $this->EE->TMPL->tagdata;

			$tagdata	= $this->EE->functions->prep_conditionals( $tagdata, $row );
			$tagdata	= $this->_parse_switch( $tagdata );

			foreach ( $this->EE->TMPL->var_single as $key => $val )
			{
				// ----------------------------------------
				// 	Parse status date variable
				// ----------------------------------------

				if ( isset( $row['friends_hug_date'] ) === TRUE AND strpos( $tagdata, 'format=' ) !== FALSE AND strpos( $key, 'friends_hug_date' ) !== FALSE )
				{
					$tagdata	= str_replace( LD.$key.RD, $this->_parse_date( $val, $row['friends_hug_date'] ), $tagdata );
				}

				// ----------------------------------------
				// 	Parse all
				// ----------------------------------------

				if ( isset( $row[$key] ) === TRUE )
				{
					$tagdata	= str_replace( LD.$key.RD, $row[$key], $tagdata );
				}
			}

			$tagdata	= $this->_parse_member_data( $row['friends_member_id'], $tagdata );

			$r	.= $tagdata;
		}

		// ----------------------------------------
		// 	Parse pagination
		// ----------------------------------------

		return $this->_parse_pagination( $r );
	}

	//	End hugs
}

//	End class
