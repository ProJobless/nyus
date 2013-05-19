<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Status_Delete Class
 *
 * @package     ExpressionEngine
 * @category    Plugin
 * @author      Herman Marin
 * @copyright   Copyright (c) 2013, Herman Marin
 * @link        http://ayuinc.com/plugins/status-delete
 */

$plugin_info = array(
  'pi_name'         => 'Status Delete',
  'pi_version'      => '1.0',
  'pi_author'       => 'Herman Marin',
  'pi_author_url'   => 'http://ayuinc.com/',
  'pi_description'  => 'Delete a status from the Great Wall',
  'pi_usage'        => Status_Delete::usage()
);

class Status_Delete
{

    public $return_data = "";
    
    public function __construct()
    {
        $this->EE =& get_instance();
        $status_id = $this->EE->TMPL->fetch_param('status_id');
        $member_id = $this->EE->TMPL->fetch_param('member_id');
        
        
        
        $this->EE->db->query("UPDATE exp_friends_status SET visible='1' where status_id='$status_id'");
        
        $query = $this->EE->db->query("SELECT * FROM exp_channel_data WHERE field_id_23='$status_id' AND field_id_16='$member_id' limit 1 ");
    	
    	foreach ($query->result() as $row)
    	{
	    	$entry_id = $row->entry_id;
	    	//$this->return_data = $row->entry_id;
	    	$this->EE->db->query("DELETE from exp_channel_data where entry_id='$entry_id'");
	    	$this->EE->db->query("DELETE from exp_channel_titles where entry_id='$entry_id'");
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

The Memberlist Plugin simply updates the table exp_friends_status to change the column visible to 1 and hide the status in the Great Wall.

    {exp:status_delete}


    <?php
        $buffer = ob_get_contents();
        ob_end_clean();

        return $buffer;
    }
    // END
}
/* End of file pi.status_filter.php */
/* Location: ./system/expressionengine/third_party/status_delete/pi.status_delete.php */