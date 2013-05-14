<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Comments_Counter Class
 *
 * @package     ExpressionEngine
 * @category    Plugin
 * @author      Herman Marin
 * @copyright   Copyright (c) 2013, Herman Marin
 * @link        http://ayuinc.com/plugins/comments-counter
 */

$plugin_info = array(
  'pi_name'         => 'Comments Counter',
  'pi_version'      => '1.0',
  'pi_author'       => 'Herman Marin',
  'pi_author_url'   => 'http://ayuinc.com/',
  'pi_description'  => 'Generates an return the value of the recent comments for the user',
  'pi_usage'        => Comments_Counter::usage()
);

class Comments_Counter
{

    public $return_data = "";
    
    public function __construct()
    {
        $this->EE =& get_instance();
    	$user_member_id = $this->EE->TMPL->fetch_param('user_member_id');
    	$user_last_visit = $this->EE->TMPL->fetch_param('user_last_visit');
    	$only_count = $this->EE->TMPL->fetch_param('only_count');
    	
    	if ($only_count==0) {
    	//For the user that will send the email
    	$query = $this->EE->db->query("SELECT count(*) as comment_counter FROM exp_channel_data, exp_channel_titles WHERE exp_channel_data.entry_id=exp_channel_titles.entry_id AND exp_channel_data.field_id_13!='$user_member_id' AND exp_channel_data.channel_id='1' AND exp_channel_titles.entry_date > '$user_last_visit' order by exp_channel_data.entry_id DESC");
    	
    	foreach ($query->result() as $row)
    	{
	    	if ($row->comment_counter!=0) {	
	    	$this->return_data .="<div class='notifications-count' id='notifications-count'>";
	    		$this->return_data .="<span>".$row->comment_counter."</span>";
	    	$this->return_data .="</div>";
	    	}

    	}
    	
    	$this->return_data .= "<a href='#' class='notifications-icon' data-dropdown='notifications' id='notifications-icon' title='Notifications'></a>";
    	
    	} else {
	    	
	    	$query = $this->EE->db->query("SELECT count(*) as comment_counter FROM exp_channel_data, exp_channel_titles WHERE exp_channel_data.entry_id=exp_channel_titles.entry_id AND exp_channel_data.field_id_13!='$user_member_id' AND exp_channel_data.channel_id='1' AND exp_channel_titles.entry_date > '$user_last_visit' order by exp_channel_data.entry_id DESC");
    	
	    	foreach ($query->result() as $row)
	    	{
		    	$this->return_data =$row->comment_counter;
	    	}
	    	
    	}
    	
    	
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

    {exp:comments_counter}

This is an incredibly simple Plugin.


    <?php
        $buffer = ob_get_contents();
        ob_end_clean();

        return $buffer;
    }
    // END
}
/* End of file pi.comments_counter.php */
/* Location: ./system/expressionengine/third_party/comments_counter/pi.comments_counter.php */