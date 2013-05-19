<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Status_Updates Class
 *
 * @package     ExpressionEngine
 * @category    Plugin
 * @author      Herman Marin
 * @copyright   Copyright (c) 2013, Herman Marin
 * @link        http://ayuinc.com/plugins/status-filter
 */

$plugin_info = array(
  'pi_name'         => 'Status Filter',
  'pi_version'      => '1.0',
  'pi_author'       => 'Herman Marin',
  'pi_author_url'   => 'http://ayuinc.com/',
  'pi_description'  => 'Updates the timestamp on the Wall Post Channel',
  'pi_usage'        => Status_Filter::usage()
);

class Status_Filter
{

    public $return_data = "";
    
    public function __construct()
    {
        $this->EE =& get_instance();
        $current_date = $this->EE->TMPL->fetch_param('current_date');
        $status_owner = $this->EE->TMPL->fetch_param('status_owner');
        
        $query = $this->EE->db->query("UPDATE exp_friends_status SET update_date='$current_date' where status_id='$status_owner'");
    
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

    {exp:status_filter}

This is an incredibly simple Plugin.


    <?php
        $buffer = ob_get_contents();
        ob_end_clean();

        return $buffer;
    }
    // END
}
/* End of file pi.status_filter.php */
/* Location: ./system/expressionengine/third_party/status_updates/pi.status_filter.php */