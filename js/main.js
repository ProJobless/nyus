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
// FILE HANDLER FOR UPLOADED IMAGE PREVIEWS
// SHOWS FILE NAME, SIZE AND IMAGE, JUST FILE NAME AND SIZE FOR VIDEO AND AUDIO
// MORE INFO HERE: https://developer.mozilla.org/en-US/docs/Using_files_from_web_applications

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
    var limitAbb;
    var imageType = /image.*/
    var videoType = /video.*/
    var audioType = /audio.*/
    
    if (file.type.match(imageType)) {
        fileLimit = 2500000
        limitAbb = '2.5 MB'
        input = document.getElementById('photo-input')
    } else if (file.type.match(audioType)) {
        fileLimit = 10000000
        limitAbb = '10 MB'
        input = document.getElementById('audio-input')
    } else {
        fileLimit = 15000000
        limitAbb = '15 MB'
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