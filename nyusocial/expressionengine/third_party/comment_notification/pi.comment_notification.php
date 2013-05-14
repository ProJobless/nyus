<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Comment_Notification Class
 *
 * @package     ExpressionEngine
 * @category    Plugin
 * @author      Herman Marin
 * @copyright   Copyright (c) 2013, Herman Marin
 * @link        http://ayuinc.com/plugins/status-update
 */

$plugin_info = array(
  'pi_name'         => 'Comment Notification',
  'pi_version'      => '1.0',
  'pi_author'       => 'Herman Marin',
  'pi_author_url'   => 'http://ayuinc.com/',
  'pi_description'  => 'Submit a new status adding Images, Videos or Audio files to it. It also has a feature to categorize the entry',
  'pi_usage'        => Comment_Notification::usage()
);

class Comment_Notification
{

    public $return_data = "";
    
    public function __construct()
    {
        $this->EE =& get_instance();
    	$author_id = $this->EE->TMPL->fetch_param('author_id');
    	$status_id = $this->EE->TMPL->fetch_param('status_id');
    	
    	//For the user that will send the email
    	$query = $this->EE->db->query("SELECT email, screen_name FROM exp_members WHERE member_id='$author_id' limit 1 ");
    	
    	foreach ($query->result() as $row)
    	{
	    	$email_poster = $row->email;
	    	$screen_name_poster = $row->screen_name;
    	}
    	
    	//For the user that will receive the notification
    	$query1 = $this->EE->db->query("SELECT exp_members.email, exp_members.screen_name FROM exp_members LEFT JOIN exp_friends_status ON exp_members.member_id = exp_friends_status.member_id WHERE exp_friends_status.status_id='$status_id' limit 1  ");
    	
    	foreach ($query1->result() as $row1)
    	{
	    	$email_notification = $row1->email;
	    	$screen_name_notification = $row1->screen_name;
    	}
    	
    	
    	//Email details and information
    	/*$subject = $screen_name_poster.' commented on your status. - NYU Shanghai';
    	$email_from = 'NYUShanghai@nyu.edu';
    	ini_set("sendmail_from", $email_from);
    	$header = 'From: '.$email_from.'\n';
    	$header .= "Reply-To:  NYUShanghai@nyu.edu\r\n";
    	$header .= 'Content-type: text/plain; charset=iso-8859-1\n';
    	$header .= "Content-Transfer-Encoding: 8bit\n";
    	
    	$lines = array(
		    'Hello!',
		    isset($screen_name_notification),
		    'You got a comment on your status.',
		    'Use this link to see your comment:',
		    $comment_link
		);
		$body = implode("\r\n", $lines);
    	
    	mail(isset($email_notification),$subject,$body,$header); //Send the email*?
    	*/
    	$comment_link = 'http://shanghai.nyu.edu/introductions/includes/view-status/'.$author_id.'/'.$status_id;
    	$to = "coloradomarin@gmail.com";
		$subject = $screen_name_poster." commented on your status. - NYU Shanghai";
		$message = "Hello! You got a comment on your status.\r\nUse this link to see your comment:\r\n".$comment_link;
		$from = "NYUShanghai@nyu.edu";
		$headers = "From:" . $from;
		mail($email_notification,$subject,$message,$headers);
    	
    	//$this->return_data = '<p>Email Notification: '.$email_notification.'Author: '.$author_id.' STatus: '.$status_id.'</p>';
    	
 
 /*
 $from = "Sandra Sender <sender@example.com>";
 $to = "Ramona Recipient <recipient@example.com>";
 $subject = "Hi!";
 $body = "Hi,\n\nHow are you?";
 
 $host = "mail.example.com";
 $username = "smtp_username";
 $password = "smtp_password";
 
 $headers = array ('From' => $from,
   'To' => $to,
   'Subject' => $subject);
 $smtp = Mail::factory('smtp',
   array ('host' => $host,
     'auth' => true,
     'username' => $username,
     'password' => $password));
 
 $mail = $smtp->send($to, $headers, $body);
 
 if (PEAR::isError($mail)) {
   echo("<p>" . $mail->getMessage() . "</p>");
  } else {
   echo("<p>Message successfully sent!</p>");
  }
  */   	
    	
    	
    }
    


    // --------------------------------------------------------------------

    /**
     * Usage
     *
     * This function describes how the plugin is used.
     *
     * @access  public
     * @return  string
     */
    public static function usage()
    {
        ob_start();  ?>

The Memberlist Plugin simply outputs a
list of 15 members of your site.

    {exp:comment_notification}

This is an incredibly simple Plugin.


    <?php
        $buffer = ob_get_contents();
        ob_end_clean();

        return $buffer;
    }
    // END
}
/* End of file pi.comment_notification.php */
/* Location: ./system/expressionengine/third_party/status_updates/pi.comment_notification.php */