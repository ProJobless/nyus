/*!
 * ExpressionEngine - by EllisLab
 *
 * @package		ExpressionEngine
 * @author		EllisLab Dev Team
 * @copyright	Copyright (c) 2003 - 2012, EllisLab, Inc.
 * @license		http://ellislab.com/expressionengine/user-guide/license.html
 * @link		http://ellislab.com
 * @since		Version 2.0
 * @filesource
 */

(function(a){var e,g,c,f,i=!0;a.ee_fileuploader=function(b){c=a.extend({},{},b);a.ee_filebrowser.endpoint_request("setup_upload",function(b){e=a(b.uploader).appendTo(document.body);e.removeClass().addClass("before_upload");"filemanager"==c.type?e.find(".button_bar .filebrowser").remove():"filebrowser"==c.type&&e.find(".button_bar .filemanager").remove();a(document).ready(function(){a.ee_fileuploader.build_dialog()});"function"==typeof c.load&&c.load.call(this,e)})};a.ee_fileuploader.build_dialog=
function(){e.dialog({width:600,height:370,resizable:!1,position:["center","center"],modal:!0,draggable:!0,title:EE.fileuploader.window_title,autoOpen:!1,zIndex:99999,open:function(){h("before_upload");f={};a("#file_uploader .button_bar .loading").addClass("visualEscapism");a.ee_fileuploader.reset_upload();void 0===g&&(g=e.html());"function"==typeof c.open&&c.open.call(this,e);j()},close:function(){"undefined"!=typeof window.upload_iframe.file&&(i&&a.ajax({url:EE.BASE+"&"+EE.fileuploader.delete_url,
type:"POST",dataType:"json",data:{file:f.file_id,XID:EE.XID},error:function(a,d){console.log(d)}}),"function"==typeof c.close&&c.close.call(this,e,f),!1===i&&a.ee_filebrowser.reload());e.html(g)}});a(c.trigger).live("click",function(a){a.preventDefault();e.dialog("open")})};var j=function(){a("#file_uploader .button_bar #rename_file").click(function(b){b.preventDefault();a("#file_uploader iframe").contents().find("form").trigger("submit")});a("#file_uploader .button_bar .cancel").live("click",function(b){b.preventDefault();
$iframe=a("#file_uploader iframe").contents();$iframe.find("#edit_file_metadata").size()?($iframe.find("#resize input").each(function(){a(this).val(a(this).data("default")).removeClass("oversized")}),$iframe.find("#rotate input").prop("checked",!1)):e.dialog("close")})};a.ee_fileuploader.reset_upload=function(b){"undefined"==typeof b&&(b=!0);a("#file_uploader .button_bar .loading").addClass("visualEscapism");!0===b&&a("#file_uploader .button_bar #upload_file").addClass("disabled-btn").removeClass("submit").unbind()};
a.ee_fileuploader.enable_upload=function(){a("#file_uploader .button_bar #upload_file").addClass("submit").removeClass("disabled-btn").click(function(b){b.preventDefault();a("#file_uploader .button_bar .loading").removeClass("visualEscapism");a("#file_uploader iframe").contents().find("form").trigger("submit")})};var k=function(){e.dialog("close");a.ee_filebrowser.clean_up(f)};a.ee_fileuploader.set_directory_id=function(b){if(!isNaN(parseInt(b,10))){var d=e.find("iframe").attr("src"),c=d.search("&directory_id="),
f=a.ee_filebrowser.get_current_settings();0<c&&(d=d.substring(0,c));d=d+"&directory_id="+b;0>=a(".dir_choice_container:visible").size()&&(d+="&restrict_directory=true");f&&"image"==f.content_type&&(d+="&restrict_image=true");e.find("iframe").attr("src",d);return b}return!1};a.ee_fileuploader.file_exists=function(b){a.ee_fileuploader.update_file(b);h("file_exists")};a.ee_fileuploader.after_upload=function(b){a.ee_fileuploader.update_file(b);i=!1;"function"==typeof c.after_upload&&c.after_upload.call(this,
e,f);h("after_upload");a("#edit_image").toggle(b.is_image);if("filemanager"==c.type){a("#file_uploader .button_bar").on("click","#browse_files",function(a){k();a.preventDefault()});for(var b=["edit_file","edit_image"],d=0,g=b.length;d<g;d++){var j=a(".mainTable tr.new:first td:has(img) a[href*="+b[d]+"]").attr("href");a("#"+b[d],"#file_uploader .button_bar").attr("href",j)}}else"filebrowser"==c.type&&(a("#file_uploader .button_bar").on("click","#choose_file",function(a){k();a.preventDefault()}),a("#file_uploader .button_bar").on("click",
"#edit_file_modal",function(b){a("#file_uploader iframe").contents().find("form#edit_file").trigger("submit");h("edit_modal");b.preventDefault()}),a("#file_uploader .button_bar").on("click","#save_file",function(b){a("#file_uploader iframe").contents().find("form#edit_file_metadata").trigger("submit");b.preventDefault()}))};a.ee_fileuploader.update_file=function(a){f=a};var h=function(b){a("#file_uploader").removeClass("before_upload after_upload file_exists edit_modal").addClass(b)}})(jQuery);
