/*!
*
* Copyright (c) David Bushell | http://dbushell.com/
*
*/
(function(window, document, undefined)
{
    // helper functions
    var trim = function(str)
    {
        return str.trim ? str.trim() : str.replace(/^\s+|\s+$/g,'');
    };
    var hasClass = function(el, cn)
    {
        return (' ' + el.className + ' ').indexOf(' ' + cn + ' ') !== -1;
    };
    var addClass = function(el, cn)
    {
        if (!hasClass(el, cn)) {
            el.className = (el.className === '') ? cn : el.className + ' ' + cn;
        }
    };
    var removeClass = function(el, cn)
    {
        el.className = trim((' ' + el.className + ' ').replace(' ' + cn + ' ', ' '));
    };
    var hasParent = function(el, id)
    {
        if (el) {
            do {
                if (el.id === id) {
                    return true;
                }
                if (el.nodeType === 9) {
                    break;
                }
            }
            while((el = el.parentNode));
        }
        return false;
    };
    // normalize vendor prefixes
    var doc = document.documentElement;
    var transform_prop = window.Modernizr.prefixed('transform'),
    transition_prop = window.Modernizr.prefixed('transition'),
    transition_end = (function() {
        var props = {
            'WebkitTransition' : 'webkitTransitionEnd',
            'MozTransition' : 'transitionend',
            'OTransition' : 'oTransitionEnd otransitionend',
            'msTransition' : 'MSTransitionEnd',
            'transition' : 'transitionend'
        };
        return props.hasOwnProperty(transition_prop) ? props[transition_prop] : false;
    })();
    
    window.App = (function()
    {
        var _init = false, app = { };
        var inner = document.getElementById('page'),
        nav_open = false,
        nav_class = 'js-nav';
        app.init = function()
        {
            if (_init) {
                return;
            }
            _init = true;
            var closeNavEnd = function(e)
            {
                if (e && e.target === inner) {
                    document.removeEventListener(transition_end, closeNavEnd, false);
                }
                nav_open = false;
            };
            app.closeNav =function()
            {
                if (nav_open) {
                    // close navigation after transition or immediately
                    var duration = (transition_end && transition_prop) ? parseFloat(window.getComputedStyle(inner, '')[transition_prop + 'Duration']) : 0;
                    if (duration > 0) {
                        document.addEventListener(transition_end, closeNavEnd, false);
                    } else {
                        closeNavEnd(null);
                    }
                }
                removeClass(doc, nav_class);
            };
            app.openNav = function()
            {
                if (nav_open) {
                    return;
                }
                addClass(doc, nav_class);
                nav_open = true;
            };
            app.toggleNav = function(e)
            {
                if (nav_open && hasClass(doc, nav_class)) {
                    app.closeNav();
                } else {
                    app.openNav();
                }
                if (e) {
                    e.preventDefault();
                }
            };
            
            try {
            // open nav with main "nav" button
            document.getElementById('menu-btn').addEventListener('click', app.toggleNav, false);
            // close nav with main "close" button
            //document.getElementById('nav-close-btn').addEventListener('click', app.toggleNav, false);
            } catch(e) { console.log(e) }
            // close nav by touching the partial off-screen content
            document.addEventListener('click', function(e)
            {
                if (nav_open && !hasParent(e.target, 'nav')) {
                    e.preventDefault();
                    app.closeNav();
                }
            },
            true);
            addClass(doc, 'js-ready');
        };
        return app;
    })();
    if (window.addEventListener) {
        window.addEventListener('DOMContentLoaded', window.App.init, false);
    }
})(window, window.document);

function findIgnores(){
    var $links = $('a')
    
    $ignoreMe = $links.filter(function(i){ 
        return !!($(this).attr('rel') === 'ignore')
    })
    
    return $ignoreMe
    
}

// ***********************************************************************************************************************//
// CROSS-BROWSER DETECTION FOR INFINITE SCROLL PLUGIN
// SHOULD ONLY FIRE WHEN WITHIN 100 PIXELS OF BOTTOM OF PAGE
// THIS SO POST IS HELPFUL: http://stackoverflow.com/questions/3898130/how-to-check-if-a-user-has-scrolled-to-the-bottom

function getDocHeight() {
    var D = document;
    return Math.max(
        Math.max(D.body.scrollHeight, D.documentElement.scrollHeight),
        Math.max(D.body.offsetHeight, D.documentElement.offsetHeight),
        Math.max(D.body.clientHeight, D.documentElement.clientHeight)
    );
}

function infiniteScroll() {
    var $w = $(window)
    var check = function() {
        if ($w.scrollTop() + $w.height() > getDocHeight() - 100) {
            
        }
        setTimeout(check, 500)
    }
    
    setTimeout(check, 500)
}

// ***********************************************************************************************************************//
// IMAGE RESIZING IN BROWSER USING HTML5 CANVAS
// SEE MORE HERE: http://www.rubydesigner.com/blog/resizing-images-before-upload-using-html5-canvas

try {
var fileinput = document.getElementById('photo-input');

var max_width = fileinput.getAttribute('data-maxwidth');
var max_height = fileinput.getAttribute('data-maxheight');

var preview = document.getElementById('preview');

var canvas = document.getElementById('canvas');
var form = document.getElementById('form');
} catch(e) { console.log('not on the post')}

function processfile(file) {
  
    if( !( /image/i ).test( file.type ) )
        {
            alert( "File "+ file.name +" is not an image." );
            return false;
        }
    
    var type = file.type
    var imgProps = {
        name : file.name,
        size : file.size,
        image : ''
    }      

    // read in the files
    var reader = new FileReader();
    reader.readAsArrayBuffer(file);
    
    reader.onload = function (event) {

        // set up the blob
        var blob = new Blob([event.target.result], {type: type})
        window.URL = window.URL || window.webkitURL
        var blobURL = window.URL.createObjectURL(blob)
        
        // Preview Image to be inserted into canvas
        var image = new Image()
        image.src = blobURL
        window.URL.revokeObjectURL(blobURL)
        
        image.onload = function() {
            window.URL.revokeObjectURL(this.src)

            resized = resizeMe(image, type) // sending to canvas
            imgProps['image'] = resized // setting up for PHP

            for (prop in imgProps) {
                var toPHP = document.createElement('input')
                if (imgProps.hasOwnProperty(prop)) {
                    toPHP.type = 'hidden'
                    toPHP.name = 'images['+prop+']'
                    toPHP.value = imgProps[prop]
                    form.appendChild(toPHP)
                }
            }

      }
    };
}


function readfiles(files) {
  
    // remove the existing canvases and hidden inputs if user re-selects new pics
    var existinginputs = document.getElementsByName('images[]');
    var existingcanvases = document.getElementsByTagName('canvas');
    while (existinginputs.length > 0) { // it's a live list so removing the first element each time
      // DOMNode.prototype.remove = function() {this.parentNode.removeChild(this);}
      form.removeChild(existinginputs[0]);
      preview.removeChild(existingcanvases[0]);
    } 
  
    for (var i = 0; i < files.length; i++) {
      processfile(files[i]); // process each file at once
    }
    fileinput.value = ""; //remove the original files from fileinput
    // TODO remove the previous hidden inputs if user selects other files
}


// this is where it starts. event triggered when user selects files

try {
fileinput.onchange = function(){
  if ( !( window.File && window.FileReader && window.FileList && window.Blob ) ) {
    alert('The File APIs are not fully supported in this browser.');
    return false;
    }
  readfiles(fileinput.files);
}
} catch(e) {}

// === RESIZE ====

function resizeMe(img,type) {
  
  var canvas = document.createElement('canvas');
  
  var width = img.width;
  var height = img.height;

  // calculate the width and height, constraining the proportions
  if (width > height) {
    if (width > max_width) {
      //height *= max_width / width;
      height = Math.round(height *= max_width / width);
      width = max_width;
    }
  } else {
    if (height > max_height) {
      //width *= max_height / height;
      width = Math.round(width *= max_height / height);
      height = max_height;
    }
  }
  
  // resize the canvas and draw the image data into it
  canvas.width = width;
  canvas.height = height;
  var ctx = canvas.getContext("2d");
  ctx.drawImage(img, 0, 0, width, height);
  
  preview.appendChild(canvas); // do the actual resized preview
  
  return canvas.toDataURL(type,0.7); // get the data from canvas as 70% JPG (can be also PNG, etc.)

}

/*
function sendFile(file) {
    var uri = "post/post";
    var xhr = new XMLHttpRequest();
    var fd = new FormData();
     
    xhr.open("POST", uri, true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            // Handle response.
            alert(xhr.responseText); // handle response.
        }
    };
    fd.append("myFile", file);
    // Initiate a multipart/form-data upload
    xhr.send(fd);
}
*/

// ***********************************************************************************************************************//
// FILE HANDLER FOR UPLOADED IMAGE PREVIEWS
// SHOWS FILE NAME, SIZE AND IMAGE, JUST FILE NAME AND SIZE FOR VIDEO AND AUDIO
// MORE INFO HERE: https://developer.mozilla.org/en-US/docs/Using_files_from_web_applications

/*
window.URL = window.URL || window.webkitURL
var fileSelect = document.getElementById('photo-select'),
    fileElem = document.getElementById('photo-input'),
    fileList = document.getElementById('preview')

fileSelect.addEventListener('click', function(e) {
    if (fileElem) {
        fileElem.click()
    }
    e.preventDefault()
}, false)

function handleFiles(files) {
    if (!files.length) {
        fileList.innerHTML = '<p>No Files Selected. Don\'t forget about #size!</p>'
    } else {
        var reader = new FileReader()
        var file = files[0]
        var img = document.createElement('img')
        var blob = window.URL.createObjectURL(file)
        img.src = window.URL.createObjectURL(file)
        img.file = file
        img.height = 60
        img.onload = function(e) {
            window.URL.revokeObjectURL(this.src)
        }
        fileList.appendChild(img)
        fileElem.value = ''
    }
}

function sendFiles() {
    var img = document.querySelectorAll('.blob')
    new FileUpload(img, img.file)
}

function FileUpload(img, file) {
    var reader = new FileReader()
    //this.ctrl = createThrobber(img)
    var xhr = new XMLHttpRequest()
    this.xhr = xhr
    
    var self = this
/*
    this.xhr.upload.addEventListener('progress', function(e) {
        if (e.lengthComputable) {
            var percentage = Math.round((e.loaded * 100) / e.total)
            self.ctrl.update(percentage)
        }
    }, false)
*/
    
/*
    xhr.upload.addEventListener('load', function(e) {
        self.ctrl.update(100)
        var canvas = self.ctrl.xhr.canvas
        canvas.parentNode.removeChild(canvas)
    }, false)
*/
/*
    xhr.open("POST", "http://localhost/introductions/post/post", true)
    reader.onload = function(evt) {
        xhr.send(evt.target.result)
    }
    reader.readAsBinaryString(file)
}
*/


function updateSize(file) {
    /*
var nBytes = 0,
        nFiles = files.length
        
    for (var nFileId = 0; nFileId < nFiles; nFileId++) {
        nBytes += files[nFileId].size
    }
*/
    var nBytes = file.size
    var output = nBytes + ' bytes'
    for (var multiples = ['KB', 'MB'], n = 0, approx = nBytes/1024; approx > 1; approx /= 1024, n++) {
        output = approx.toFixed(2) + ' ' + multiples[n]
    }
    
    return output
    
}


// Let's make sure we're not uploading huge things
function checkFileSize(file) {
    var input;
    var fileLimit;
    var limit;
    var imageType = /image.*/
    var videoType = /video.*/
    var audioType = /audio.*/
    
    if (file.type.match(imageType)) {
        fileLimit = 2500000
        limit = '2.5 MB'
        input = document.getElementById('photo-input')
    } else if (file.type.match(audioType)) {
        fileLimit = 10000000
        limit = '10 MB'
        input = document.getElementById('audio-input')
    } else {
        fileLimit = 15000000
        limit = '15 MB'
        input = document.getElementById('video-input')
    }
    
    if (file.size > fileLimit) {
        try {
            $('#size').html('Too Big! Choose another file')
            $('#submit').prop('disabled', true)
        } catch(e) {}
        return
    }
    
    $('#submit').prop('disabled', false)

    return input    
}


// TAKE THE FILES, TURN THEM INTO DATA URIS AND SHOW THEM TO THE USER
/*
function handleFiles(input, preview) {  
    var file = input.files[0]
    var name = file.name
    var $preview = $(preview)
    var reader = new FileReader()
    var clearButton = $('<button/>').attr({'class':'clear','id':'clear','type':'button'}).html('Revert')

    var input = checkFileSize(file)
    var size = updateSize(file)
    
    
    if (input.className.match('photo')) {
    
        if (!!$preview.find('img').length) { 
            // CLEAR ANY IMAGES INSIDE PREVIEW
            var oldPhoto = $preview.find('img').detach()
        }
        
        var img = document.createElement("img")
        img.classList.add("thumb")
        img.file = file
        $preview.prepend(img)

        reader.onload = (function(aImg) { 
            return function(e) { 
                aImg.src = e.target.result
            };
        })(img)
        reader.readAsDataURL(file)
    }
    
    if (!!$('#size').length) { 
        $preview.children('#size').html('<strong>Filename:</strong> ' + name + '<br> <strong>Filesize:</strong> ' + size)
            .append(clearButton)
            .on('click', '#clear', function(){ fileClear(oldPhoto) } )
        
    }
    
    if (!!$('.upload-buttons').length) {
        $notSelected = $('input[type=file]').not(input)
        $notSelected.parent().addClass('disabled')
        $notSelected.prop('disabled', true)
    }
    
    if ($(input).hasClass('photo-input')) {
        $(input).siblings('#profile-select').toggleClass('visuallyhidden')
    }
}
*/


// DELETE THE UPLOADED PHOTO FROM THE DOM AND THE INPUT OBJECT
function fileClear(oldPhoto){
    $('#profile-select').toggleClass('visuallyhidden')
    $inputs = $('input[type=file]')
    $inputs.val('').prop('disabled', false)
    $inputs.parent().removeClass('disabled')
    var size = $('<span/>').addClass('size').attr('id','size')
    $('#preview').find('img, #size').remove()
    $('#preview').prepend(oldPhoto, size)
}

$(document).ready(function(){
    findIgnores()
    $ignoreMe.on('click', function(e){ e.preventDefault() })
    
    infiniteScroll()
        
    // ***********************************************************************************************************************//
    // PROFILE SETUP PROCESS
    
    if ($('#actions').hasClass('open')) {

    }

    // ***********************************************************************************************************************//
    // EDIT PROFILE FORM

    $('#edit-details').click(function(e){
        e.preventDefault()
        
        if (!!$('#instructions').length) {
            $('#form, #instructions').toggleClass('visuallyhidden')
            if (!$('#clear').length){
                $('#profile-select').toggleClass('visuallyhidden')
            }
            $('#next').prop('disabled', false)
        
        } else if (!!$('#info').length) {
            $('#form, #info').toggleClass('visuallyhidden')
            if (!$('#clear').length){
                $('#profile-select').toggleClass('visuallyhidden')
            }
        }
        
        $(this).toggleClass('open')
    })
    
//    $('#clear').on('click', function(e){ e.preventDefault(); fileClear() })   


    //**********************************************************************************************************************//    
    // FILE INPUTS
    
    $('.attach-media, #profile-select').click(function(){ $(this).siblings('input').click() })
    
    // TEST FOR SETUP IN URL SEGMENT TO AUTOMATICALLY OPEN ACTION PROMPTS
    try {
        if (!!document.URL.match(/setup/).length) { 
//            $('#actions-icon').trigger('click')
        }
    } catch(e) {}
    
    //**********************************************************************************************************************//
    // FANCYBOX
    
    var commonHelpers = {
            title : {},
            closeClick: true,
            overlay : {
                css : {
                'background': 'black'
                }
            }
        }
    
    $('.posted-img').fancybox({
        helpers : commonHelpers
    })
    
    // FANCYBOX FOR AUDIO AND VIDEO OBJECTS ON GREAT WALL
    $('.posted-audio, .posted-video').click(function(e){
        e.preventDefault()
        path = $(this).attr('data-path')
        audio = $(this).attr('data-audio')
        width = window.innerWidth
        $.fancybox(this, {
            type : 'ajax',
            ajax : {
                type : 'POST',
                data : 'path=' + path + '&audio=' + audio + '&width=' + width
            },
            helpers : commonHelpers
        })
    })

    // FANCYBOX FOR AUDIO AND VIDEO OBJECTS ON GREAT WALL
    $('#notifications a').click(function(e){
        e.preventDefault()
        memberId = $(this).attr('data-member')
        statusToLoad = $(this).attr('data-related-status')
        $.fancybox(this, {
            type : 'ajax',
            ajax : {
                type : 'POST',
                data : 'memberid=' + memberId + '&status=' + statusToLoad
            },
            helpers : commonHelpers
        })
    })

    // ***********************************************************************************************************************//
    
    $('#notifications-icon').click(function(){
        $('.notifications-count').addClass('viewed')
    })    
    
    $('#actions-icon').click(function(){
        $('.actions-count').addClass('viewed')
    })
    
    // GENERAL PURPOSE STOP PROPAGATION
    $('#notifications-icon, #actions-icon, .attach-media, #profile-select').click(function(e){
        e.preventDefault()
    })
    
})