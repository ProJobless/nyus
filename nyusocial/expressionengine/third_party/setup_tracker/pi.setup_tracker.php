<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Setup_tracker Class
 *
 * @package     ExpressionEngine
 * @category    Plugin
 * @author      Brian Whitton
 * @copyright   Copyright (c) 2013, Herman Marin
 */

$plugin_info = array(
  'pi_name'         => 'Setup tracker',
  'pi_version'      => '0.0.1',
  'pi_author'       => 'Brian Whitton',
  'pi_author_url'   => 'http://brianwhitton.com/',
  'pi_description'  => '',
  'pi_usage'        => Setup_tracker::usage()
);

class Setup_tracker
{

    public $return_data = "";
    
    public function __construct()
    {
        $this->EE =& get_instance();
        
        // Send current position as a number 0 - 4 either as a hidden input or as a plugin parameter
        // no entry: user has not accepted terms, return to setup/step-one with TOU modal -- INITIAL SCREEN
        // 0: user has accepted terms, return to SETUP/STEP-ONE; this value is set on setup/accept-terms and passed via POST
        // 1: user has filled in their profile and completed step one, return to SETUP/TO-DO; this value is set on setup/to-do and passed via parameter
        // 2: user has clicked next from to do, return to SETUP/STEP-TWO; this value is set on setup/step-two, embedded into includes/new-post and passed via parameter
        // 3: user has posted step two, return to SETUP/STEP-THREE; this value is passed the same way as step two
        // 4: user has posted step three, they have seen the 'All Set' message, return to THE GREAT WALL; this value is set on post/post and sent via parameter
        if (isset($_POST['id_member'])) {
            $member_id = $_POST['id_member'];
        } else {
            $member_id = ee()->TMPL->fetch_param('member_id');
        }
        
        if (isset($_POST['action_id'])) {
            $action_id = $_POST['action_id'];
        } else {
            $action_id = ee()->TMPL->fetch_param('action_id');
        }
        if (isset($_POST['next-position']) || $_POST['next-position'] == 0) {
            $position = $_POST['next-position'];
        } else {
            $position = ee()->TMPL->fetch_param('next-position');
        }
        
                
		$this->return_data = $action_id;
		$this->return_data .= $member_id;

		$this->EE->db->query("INSERT into exp_setup_tracker value ('','$action_id','$member_id','$position')");
    	
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



    <?php
        $buffer = ob_get_contents();
        ob_end_clean();

        return $buffer;
    }
    // END
}
/* End of file pi.setup_tracker.php */
/* Location: ./system/expressionengine/third_party/setup_tracker/pi.setup_tracker.php */
