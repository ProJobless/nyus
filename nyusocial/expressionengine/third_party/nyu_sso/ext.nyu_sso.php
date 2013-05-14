<?php if ( ! defined('BASEPATH') ) exit('No direct script access allowed');

/**
 * NYU SSO - Extension Class
 *
 * @package             NYU:SSO
 * @author              Christopher Muro
 * @copyright           Copyright (c) 2013 Christopher Muro.
 * @version             0.0.1
 * @filesource          nyu_sso/ext.nyu_sso.php
 * @name                NYU Shibboleth Single Sign On
 * @description         Checks the NYU login data for access control
 */

class Nyu_sso_ext {
  var $name = "NYU Shibboleth Single Sign On";
  var $description    = 'Checks the NYU login data for access control';
  var $settings_exist = 'n';
  var $docs_url       = ''; 
  var $version = "1.0";

  var $settings = array();


    function __construct($settings = '')
    {
        $this->EE =& get_instance();
        $this->settings = $settings;
    }

  function activate_extension(){
   $this->EE->db->query(
    $this->EE->db->insert_string(
     "exp_extensions", array(
     "extension_id" => "",
     "class"        => __CLASS__,
     "method"       => "check_login",
     "hook"         => "member_member_login_start",
     "settings"     => serialize($this->settings),
     "priority"     => 1,
     "version"      => $this->version,
     "enabled"      => "y"
     )
    )
   );
  }

  public function make_friends($m) {
    $EE =& get_instance();

      $query = $this->EE->db->query("select member_id, email from exp_members where group_id = '5';");
      if ($query->num_rows != 1) {
        $result = $query->result_array();
        $all_members = array();
        foreach ($result as $k => $row) {
          $all_members[$row['member_id']] = $row['email'];
        }
        // get friendships I made
        $my_friends = array();

        $query = $this->EE->db->query("select friend_id from exp_friends where member_id = '$m';");
        if ($query->num_rows != 1) {
          $result = $query->result_array();
          foreach ($result as $k => $row) {
            $my_friends[$row['friend_id']] = $row['friend_id'];
          }
        }  
        // get friendships I have
        $query = $this->EE->db->query("select member_id from exp_friends where friend_id = '$m' AND reciprocal = 'y';");
        if ($query->num_rows != 1) {
          $result = $query->result_array();
          foreach ($result as $k => $row) {
            $my_friends[$row['member_id']] = $row['member_id'];
          }
        }  


        reset($all_members);
        foreach ($all_members as $id => $email) {
          //
          if (!isset($my_friends[$id]) && $id != $m) {
            // add friend
            $sql = "INSERT INTO exp_friends VALUES
('', '$id', '$m', 0, '', 1, '', '', '$email', '".date('U')."', 0, 'n', 'y', 'n');";
            $query = $this->EE->db->query($sql);    
          }

        }
      }
  }

  public function check_login($edata){
    $EE =& get_instance();
    if (APP_VER >= '2.2.0')
    {
      $this->EE->load->library('auth');
    }    
//    if ($_SERVER['REMOTE_ADDR'] == '71.237.169.81') {
      // check to see if the user exists in allowed list
      $query = $this->EE->db->query("SELECT * FROM nyu_sso_approved_users WHERE netid = '".$this->EE->db->escape_str($_POST['username'])."';");
      if ($query->num_rows != 1) {
         die('0 user not approved');
      }

      $this->EE->load->helper('security');
      $query = $this->EE->db->query("SELECT * FROM {$this->EE->db->dbprefix}members WHERE email='".$this->EE->db->escape_str($_POST['username'])."';");
  
      if ($query->num_rows == 1) {
        // user found - login the user
        $r = $query->result_array();
        $row = $r[0];
        $_POST['username'] = $row['username'];
        $_POST['password'] = $row['password'];
        $this->EE->db->set('password', do_hash($row['password']))
               ->where('member_id', $row['member_id'])
               ->update('members');
        ob_clean();
        //  does user have a profile photo?
        if (!empty($row['photo_filename'])) {
          echo '1 user found - normal login requested - info passed to EE';
        } else {
          echo '2 user found - no profile photo - info passed to EE';
        }

        $this->make_friends($row['member_id']);

      } else {
        // if user does not exist create the user
        
            $username = str_replace('@nyu.edu', '', $_POST['username']);

            $sql = "INSERT INTO exp_members SET ".
                 "username = '$username', ".
                 "unique_id = '".do_hash(uniqid(mt_rand(), TRUE), 'sha1')."', " .
                 "group_id = '5', ".
                 "screen_name = '". $this->EE->db->escape_str($_SERVER['givenName']) ." ". $this->EE->db->escape_str($_SERVER['sn']) ."', ".
                 "email = '". $this->EE->db->escape_str($_POST['username']) ."', ".
                 "ip_address = '0.0.0.0', ".
                 "join_date = '".date('U')."', ".
                 "language = 'english', ".
                 "timezone = 'UM5', ".
                 "time_format = 'eu'";
            
            $query = $this->EE->db->query($sql);     
            
            $pw = do_hash(uniqid(mt_rand(), TRUE), 'sha1');
            $member_id = $this->EE->db->insert_id();
            $this->EE->db->set('password', do_hash($pw))
               ->where('member_id', $member_id)
               ->update('members');

            if ($member_id > 0) // update other relevant fields
            {
              $this->EE->db->query("INSERT INTO exp_member_data SET member_id = $member_id");
              $this->EE->db->query("INSERT INTO exp_member_homepage SET member_id = $member_id");             
            }
            $_POST['username'] = $username;
            $_POST['password'] = $pw;
            ob_clean();            
            echo '2 user not found but approved - ee member profile created';

            $this->make_friends($member_id);

      }

//}

  }

}  