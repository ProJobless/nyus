<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Status_Actions_Updates Class
 *
 * @package     ExpressionEngine
 * @category    Plugin
 * @author      Herman Marin
 * @copyright   Copyright (c) 2013, Herman Marin
 * @link        http://ayuinc.com/plugins/status-update
 */

$plugin_info = array(
  'pi_name'         => 'Status Action Updates',
  'pi_version'      => '1.0',
  'pi_author'       => 'Herman Marin',
  'pi_author_url'   => 'http://ayuinc.com/',
  'pi_description'  => 'Record the users that perfom an action',
  'pi_usage'        => Status_Action_Updates::usage()
);

class Status_Action_Updates
{

    public $return_data = "";
    
    public function __construct()
    {
        $this->EE =& get_instance();
    	$id_member = $this->EE->input->post('id_member');
    	$action_id = $this->EE->input->post('action_id');
    	$date_of_entry = $this->EE->TMPL->fetch_param('date_of_entry');

    	if ($action_id!='') { 
	    	$this->return_data = "Si hay valor".$id_member;
	    	
	    	//open the Framework API
			$this->EE->load->library('api');
			$this->EE->api->instantiate('channel_entries');
			$this->EE->api->instantiate('channel_fields');
			
				$data = array(
				        'title'         => 'User completed an action',
				        'entry_date'    => $date_of_entry,
				        'edit_date'     => $date_of_entry,
				        'field_id_15'    => $action_id,
				        'field_id_16'    => $id_member
				);
			
			$this->EE->api_channel_fields->setup_entry_settings('4', $data);
			
			if ($this->EE->api_channel_entries->submit_new_entry('4', $data) === FALSE)
			{
			        show_error('An Error Occurred Creating the Entry');
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
    {exp:status_action_updates}

    Record the users that perfom an action


    <?php
        $buffer = ob_get_contents();
        ob_end_clean();

        return $buffer;
    }
    // END
}
/* End of file pi.status_action_updates.php */
/* Location: ./system/expressionengine/third_party/status_action_updates/pi.status_action_updates.php */