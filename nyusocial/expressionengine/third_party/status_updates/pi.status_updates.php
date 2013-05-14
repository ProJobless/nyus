<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Status_Updates Class
 *
 * @package     ExpressionEngine
 * @category    Plugin
 * @author      Herman Marin
 * @copyright   Copyright (c) 2013, Herman Marin
 * @link        http://ayuinc.com/plugins/status-update
 */

$plugin_info = array(
  'pi_name'         => 'Status Updates',
  'pi_version'      => '1.0',
  'pi_author'       => 'Herman Marin',
  'pi_author_url'   => 'http://ayuinc.com/',
  'pi_description'  => 'Submit a new status adding Images, Videos or Audio files to it. It also has a feature to categorize the entry',
  'pi_usage'        => Status_Updates::usage()
);

class Status_Updates
{

    public $return_data = "";
    
    public function __construct()
    {
        $this->EE =& get_instance();
    	$author_id = $this->EE->TMPL->fetch_param('author_id');
    	$date_of_entry = $this->EE->TMPL->fetch_param('date_of_entry');
    	$friends_status = $this->EE->input->post('friends_status');
    	$question = $this->EE->input->post('question');

		if (isset($_POST["media_images"])) {
            $media_images_file = isset($_POST["media_images"]); 
        } else {
        	$media_images_file = isset($_FILES["media_images"]["name"]); 
        }
        
        if (isset($_POST["media_audio"])) {
            $media_audio_file = isset($_POST["media_audio"]);
        } else {
            $media_audio_file = isset($_FILES["media_audio"]["name"]);
        }
        
        if (isset($_POST["media_video"])) {
            $media_video_file = isset($_POST["media_video"]);
        } else {
            $media_video_file = isset($_FILES["media_video"]["name"]);
        }
		
		$random = substr(number_format(time() * rand(),0,'',''),0,100); //Random number
		
    	//images
    	if (($media_images_file==1) && ($media_audio_file!=1) && ($media_video_file!=1)) {		           
        	if (isset($_POST["media_images"])) { // FALLBACK FOR OLDER BROWSERS. SEND MEDIA VIA POST
                $name = $_POST["media_images"]["name"];
                $target_image = "images/media_images/".$random.$name;
                $target_image_file = $random.$name;
                
                $imageData = $_POST["media_images"]["data"];
                $string = file_get_contents($imageData);
                $image = imagecreatefromstring($string);
                
                imagejpeg($image, $target_image, 70);
            } else {

    	    	$pic1= pathinfo($_FILES['media_images']['name'], PATHINFO_EXTENSION);
                $target_image = "images/media_images/".$random.'.'.$pic1; 
                $target_image_file = $random.'.'.$pic1;
                move_uploaded_file($_FILES['media_images']['tmp_name'], $target_image);
                $image = imagecreatefromstring(file_get_contents($target_image));

                $exif = exif_read_data($target_image);
                if(!empty($exif['Orientation'])) {
                      switch($exif['Orientation']) {
                          case 8:
                              $image = imagerotate($image,90,0);
                              break;
                          case 3:
                              $image = imagerotate($image,180,0);
                              break;
                          case 6:
                              $image = imagerotate($image,-90,0);
                              break;
                      }

                      imagejpeg($image, $target_image, 70);
                }
            }        
    	}
    	
    	//audio
    	if (($media_audio_file!='') && ($media_images_file!=1) && ($media_video_file!=1)) {
	    	if (isset($_POST["media_audio"])) {
                $name = $_POST["media_audio"]["name"];
                $target_audio = "images/media_audio/".$random.$name;
                $target_audio_file = $random.$name;
                
                $audioString = $_POST["media_audio"]["data"];
                $audioBinary = file_get_contents($audioString);
                
                file_put_contents($target_audio, $audioBinary);
                
            } else {
                $audio1= pathinfo($_FILES["media_audio"]["name"], PATHINFO_EXTENSION);
            	$target_audio = "images/media_audio/".$random.".".$audio1;
            	$target_audio_file = $random.".".$audio1;
            	move_uploaded_file($_FILES["media_audio"]["tmp_name"], $target_audio); 
            } 
    	}
    	
    	//video
    	if (($media_video_file!='') && ($media_audio_file!=1) && ($media_images_file!=1)) {
        	if (isset($_POST["media_video"])) {
                $name = $_POST["media_video"]["name"];
                $target_video = "images/media_videos/".$random.$name;
                $target_video_file = $random.$name;
                
                $videoString = $_POST["media_video"]["data"];
                $videoBinary = file_get_contents($videoString);
                file_put_contents($target_video, $videoBinary);
            } else {
    	    	$video1= pathinfo($_FILES['media_video']['name'], PATHINFO_EXTENSION);
    	    	$target_video = "images/media_videos/".$random.'.'.$video1;
    	    	$target_video_file = $random.'.'.$video1;
    	    	move_uploaded_file($_FILES['media_video']['tmp_name'], $target_video);
                // check video file for orientation
                $cmd = "/usr/local/bin/ffprobe " . $target_video . " -show_streams 2>/dev/null";
                $result = shell_exec($cmd);
                $orientation = 0;
                if(strpos($result, 'TAG:rotate') !== FALSE) {
                    $result = explode("\n", $result);
                    foreach($result as $line) {
                        if(strpos($line, 'TAG:rotate') !== FALSE) {
                            $stream_info = explode("=", $line);
                            $orientation = $stream_info[1];
                        }
                    }
                }
                if ($orientation != 0) {
                  switch ($orientation) {
                    case 180:
                      $cmd = "/usr/local/bin/ffmpeg -i " . $target_video . " -map_metadata -1 -vf \"vflip,hflip\" images/media_videos/".$random.'-180.'.$video1 ." 2>/dev/null";
                      $result = shell_exec($cmd);
                      $target_video_file = $random.'-180.'.$video1;
                      unlink("images/media_videos/".$random.'.'.$video1);
                      break;
                    case 90:
                      $cmd = "/usr/local/bin/ffmpeg -i " . $target_video . " -map_metadata -1 -vf \"transpose=1\" images/media_videos/".$random.'-90.'.$video1 ." 2>/dev/null";
                      $result = shell_exec($cmd);
                      $target_video_file = $random.'-90.'.$video1;
                      unlink("images/media_videos/".$random.'.'.$video1);
                      break;
                    default:
                      break;              
                  }
                }
            }
    	}
    	
    	
    	//convert message in a secure string
    	$friends_status = mysql_real_escape_string($friends_status);

		$this->EE->db->query("INSERT into exp_friends_status value ('','$author_id','1','1','$friends_status','$date_of_entry','n')");
		
		$query = $this->EE->db->query("SELECT status_id  FROM exp_friends_status WHERE member_id='$author_id' order by status_date DESC limit 1 ");
    	
    	foreach ($query->result() as $row)
    	{
	    	$status_id = $row->status_id;
    	}

    		//open the Framework API
			$this->EE->load->library('api');
			$this->EE->api->instantiate('channel_entries');
			$this->EE->api->instantiate('channel_fields');
			
			$data = array(
				        'title'         => 'Status Media Elements',
				        'entry_date'    => $date_of_entry,
				        'edit_date'     => $date_of_entry,
				        'field_id_4'    => $status_id,
				        'field_id_5'    => $question
				    );
        			if (isset($target_image_file)) { 
        				    $data['field_id_8'] = $target_image_file;
				    }
        			if (isset($target_audio_file)) {
        			         $data['field_id_9'] = $target_audio_file;
        			}
        			if (isset($target_video_file)) {
        			         $data['field_id_10'] = $target_video_file;
        			}

			
			$this->EE->api_channel_fields->setup_entry_settings('2', $data);
			
			if ($this->EE->api_channel_entries->submit_new_entry('2', $data) === FALSE)
			{
			        show_error('An Error Occurred Creating the Entry');
			}  

			
    }

			//compress and saves image files on the server.
	public function compress_image($source_url, $destination_url, $quality) {
				$info = getimagesize($source_url);
			 
				if ($info['mime'] == 'image/jpeg') $image = imagecreatefromjpeg($source_url);
				elseif ($info['mime'] == 'image/gif') $image = imagecreatefromgif($source_url);
				elseif ($info['mime'] == 'image/png') $image = imagecreatefrompng($source_url);
			 
				//save file
				imagejpeg($image, $destination_url, $quality);
			 
				//return destination file
				//return $destination_url;
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

    {exp:status_updates}

This is an incredibly simple Plugin.


    <?php
        $buffer = ob_get_contents();
        ob_end_clean();

        return $buffer;
    }
    // END
}
/* End of file pi.status_updates.php */
/* Location: ./system/expressionengine/third_party/status_updates/pi.status_updates.php */