<?php

/*
=====================================================
 This ExpressionEngine plugin was created by Laisvunas
 - http://devot-ee.com/developers/ee/laisvunas/
=====================================================
 Copyright (c) Laisvunas
=====================================================
 This is commercial Software.
 One purchased license permits the use this Software on the SINGLE website.
 Unless you have been granted prior, written consent from Laisvunas, you may not:
 * Reproduce, distribute, or transfer the Software, or portions thereof, to any third party
 * Sell, rent, lease, assign, or sublet the Software or portions thereof
 * Grant rights to any other person
=====================================================
 Purpose: Enables to reverse the order of the series of items. 
=====================================================
*/
  
$plugin_info = array(
  'pi_name' => 'Reverse These',
  'pi_version' => '1.0',
  'pi_author' => 'Laisvunas',
  'pi_author_url' => 'http://devot-ee.com/developers/ee/laisvunas/',
  'pi_description' => 'Enables to reverse the order of the series of items.',
  'pi_usage' => Reverse_these::usage()

  );  
  
class Reverse_these
{
 	var $return_data = "";
     
 	function Reverse_these()
 	{
 		 $this->EE =& get_instance();
    
    // fetch the tagdata
		  $tagdata = $this->EE->TMPL->tagdata;
    
    // Define variables
    $var_pair = array();
    $items_array = array();
    
    $tagdata_new = $tagdata;
    $var_pair['found'] = TRUE;
    while ($var_pair['found'] === TRUE)
    {
      $var_pair = _reverse_these_get_variable_pair('reverse_these_item', $tagdata_new);
      if ($var_pair['found'] === TRUE)
      {
        $tagdata_new = $var_pair["data_beneath"];
        array_push($items_array, $var_pair["value"]);
      }
    }
    //echo 'count($items_array): ['.count($items_array).']<br><br>'.PHP_EOL;
    
    $items_array = array_reverse($items_array);
    
    $tagdata_new = $tagdata;
    $var_pair['found'] = TRUE;
    $i = 0;
    while ($var_pair['found'] === TRUE)
    {
      $var_pair = _reverse_these_get_variable_pair('reverse_these_item', $tagdata_new);
      if ($var_pair['found'] === TRUE)
      {
        $tagdata_new = $var_pair["data_above"].$items_array[$i].$var_pair["data_beneath"];
        $i++;
      }
    }
    //echo '$i: ['.$i.']<br><br>'.PHP_EOL;
    
    $this->return_data = $tagdata_new;
 	}

	//  Plugin Usage
	// ----------------------------------------

	// This function describes how the plugin is used.
	//  Make sure and use output buffering

	function usage()
	{
		ob_start(); 
		?>
  
This plugin enables you to reverse the order of the series of items. 

Why such functionality is needed?

For example, you may need to display 10 most recent comments in ascending order. But exp:comment:entries tag
allows only to set "sort" parameter value either to "asc" or "desc". So, after setting "orderby" parameter to "date" 
and "sort" to "desc" you will get 10 most recent comments but they will be ordered not as you need. To order them as needed 
their order should be reversed. Here Reverse This plugin comes to your help.
  
PARAMETERS

No parameters.

VARIABLE PAIR

1) {reverse_these_item}{/reverse_these_item} - any item in the series of items which should be reversed must be wrapped
with this variable pair.

USAGE

This code will output latest 10 comments in ascending order.

{exp:reverse_these}

{exp:comment_entries entry_id="531" limit="10" orderby="date" sort="desc"}

{reverse_these_item}
{count}{comment}
{/reverse_these_item}

{/exp:comment_entries}

{/exp:reverse_these}

		<?php
		$buffer = ob_get_contents();
	
		ob_end_clean(); 

		return $buffer;
  	}
 	// END FUNCTION
}
// END CLASS

function _reverse_these_get_variable_pair($var_name, $data) 
{
  if (strpos($data, LD.$var_name.RD) !== FALSE AND strpos($data, LD.'/'.$var_name.RD) !== FALSE)
  {
    $opening_tag_pos = strpos($data, LD.$var_name.RD);
    //echo "$opening_tag_pos: ".$opening_tag_pos."<br><br>".PHP_EOL;
    $var_pair["data_above"] = substr($data, 0, $opening_tag_pos);
    //echo "$var_pair[\'data_above\']: [".$var_pair["data_above"]."]<br><br>".PHP_EOL;
    $opening_tag_pos += strlen(LD.$var_name.RD);
    //echo "$opening_tag_pos: [".$opening_tag_pos."]<br><br>".PHP_EOL;
    $data_bottom = substr($data, $opening_tag_pos);
    //echo "$var_pair[\'data_beneath\']: [".$var_pair["data_beneath"]."]<br><br>".PHP_EOL;
    $data_bottom_splitted = explode(LD.'/'.$var_name.RD, $data_bottom, 2);
    if (count($data_bottom_splitted) == 2)
    {
      $var_pair["value"] = $data_bottom_splitted[0];
      //echo '$var_pair[\'value\']: ['.$var_pair["value"]."]<br><br>".PHP_EOL;
      $var_pair["data_beneath"] = $data_bottom_splitted[1];
      $var_pair["data_without"] = $var_pair["data_above"].$var_pair["data_beneath"];
      //echo "$var_pair[\'data_without\']: [".$var_pair["data_without"]."]<br><br>".PHP_EOL;
      $var_pair['found'] = TRUE;
       
    }
    else
    {
      $var_pair["value"] = "";
      $var_pair["data_without"] = $data;
      $var_pair["data_above"] = "";
      $var_pair["data_beneath"] = "";
      $var_pair['found'] = FALSE;
    }
  }
  else
  {
    $var_pair["value"] = "";
    $var_pair["data_without"] = $data;
    $var_pair["data_above"] = "";
    $var_pair["data_beneath"] = "";
    $var_pair['found'] = FALSE;
  }
  
  return $var_pair;
}
// END HELPER FUNCTION
?>