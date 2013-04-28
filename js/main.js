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
            } catch(e) { }
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

// this is where it starts. event triggered when user selects files
function c(a) { console.log(a) }

(function(){
    var canvas = document.createElement('canvas')
    var form = document.getElementById('form')
    var clearButton = $('<button/>').attr({'class':'clear','id':'clear','type':'button'}).html('Clear') // user-intent to clear current inputs
    var photoBag = $('input[type=hidden], canvas') // used in readfiles
    var $preview = $('#preview') // container for thumbnail and controls
    var image = new Image()
    var TO_RADIANS = Math.PI/180
    var currentAngle = 0
    var imgProps = {}
    var oldInputs, oldPhoto, size
    window.URL = window.URL || window.webkitURL
    
    
    try {
        $fileinput = $('.filereader .photo-input')
        $fileinput.change(function(e){
            c('file api supported, calling change event on .filereader #photo-input')

            imgProps['type'] = this.files[0].type
                    
             if (this.name === 'photo_filename') {
                if (!!$preview.find('img').length) { 
                    // CLEAR ANY IMAGES INSIDE PREVIEW
                    oldPhoto = $preview.find('img').detach()
                    c('detaching placeholder image')
                }
            }
            
            read(this.files)
        })
    } catch(e){}

    read = function(files){
        c('calling read() on filelist object. unknown if passed via filereader polyfill or html 5 file api')
        var file = files[0]
        var reader = new FileReader()
        
        reader.onload = function(event) {
            c('filereader loaded. setting anonymous image source to data URL representation of file object. setting image to call updatePreview on load.')
            image.onload = updatePreview
            image.src = event.target.result
            size = getSize(file)
        }
        c('loading filereader with file object')
        reader.readAsDataURL(file)
    }
    
    updatePreview = function(event){
        c('anonymous image loaded. updating preview container')
        var img = this
        $preview.find('.thumb').prepend(img)
        $preview.find('.details').append(clearButton)
        $preview.find('.size').append(size)
        $preview.addClass('loaded')
        $('#profile-select').toggleClass('visuallyhidden')
    }
    
    getSize = function(file) {
        var nBytes = file.size
        var output = nBytes + ' bytes'
        for (var multiples = ['KB', 'MB'], n = 0, approx = nBytes/1024; approx > 1; approx /= 1024, n++) {
            output = approx.toFixed(2) + ' ' + multiples[n]
        }
        return output  
    }
    
     // DELETE THE UPLOADED PHOTO FROM THE DOM AND THE INPUT OBJECT
    fileClear = function(){
        if (oldInputs) {
            $(oldInputs).remove()
        }
        if (!!$('canvas').length){
            $('canvas').remove()
        }
        
        $preview.find('img, #size').remove()
        var $inputs = $('input[type=file]')
        $inputs.val('').prop('disabled', false)
        $inputs.parent().removeClass('disabled')
        
        var size = $('<span/>').addClass('size').attr('id','size')
        $preview.find('.details').append(size)
        
        $('#profile-select').toggleClass('visuallyhidden')
        
        if (!!oldPhoto) {
            $preview.append(oldPhoto)   
        } else {
            $preview.removeClass('loaded')
        }
    }
                
               /*
 reader.readAsArrayBuffer(this.files[0]);
                reader.onload = function (event) {
                    c(event)
                    // set up the blob
                    var blob = new Blob([event.target.result], {type: imgProps.type})
                    var blobURL = window.URL.createObjectURL(blob)
                    
                    // Preview Image to be inserted into canvas
                    image.src = blobURL
                    
                    // REVOKE OBJECT URL ASAP TO SAVE MEMORY
                    // https://developer.mozilla.org/pt-BR/docs/DOM/window.URL.revokeObjectURL
                    window.URL.revokeObjectURL(blobURL)
                    
                }
                
            } else { readfiles(fileinput, this); }
*/
//            $('.photo-control').removeClass('visuallyhidden')
    
    function readfiles(fileinput, self) {
        var files = fileinput.files
    
        // remove the existing canvases and hidden inputs if user re-selects new pics
        if (!!$('canvas').length){$('canvas').remove()}
                
        for (var i = 0; i < files.length; i++) {
          oldPhoto = processfile(files[i], self); // process each file at once
        }

        if (self.name != 'photo_filename') {

            // TEMPORARY WORKAROUND
            // USER EDIT FORM NEEDS WORK OR AN EXTENSION TO BE COMPATIBLE WITH DATA URI PHOTOS
            // CAN CURRENTLY ONLY ACCEPT NEW USER PHOTOS VIA FILE INPUT VALUE
            
            fileinput.value = "";
        }
        
        if (!!$('.upload-buttons').length) {
            $notSelected = $('input[type=file]').not(self)
            $notSelected.parent().addClass('disabled')
            $notSelected.prop('disabled', true)
        }
        
        if ($(self).hasClass('photo-input')) {
            $('#profile-select').toggleClass('visuallyhidden')
        }
        
        return oldPhoto
    }
    
    function processfile(file, self) {

        imgProps['name'] = file.name
        imgProps['type'] = file.type        
        
        if (self.className.match('photo')) {
        
            if (!!$preview.find('img').length) { 
                // CLEAR ANY IMAGES INSIDE PREVIEW
                var oldPhoto = $preview.find('img').detach()
            }
        }   
    
        // read in the files
        var reader = new FileReader();
        reader.readAsArrayBuffer(file);
        
        reader.onload = function (event) {
            
            // set up the blob
            var blob = new Blob([event.target.result], {type: imgProps.type})
            window.URL = window.URL || window.webkitURL
            var blobURL = window.URL.createObjectURL(blob)
            
            // Preview Image to be inserted into canvas
            image.src = blobURL
            
            // REVOKE OBJECT URL ASAP TO SAVE MEMORY
            // https://developer.mozilla.org/pt-BR/docs/DOM/window.URL.revokeObjectURL
            window.URL.revokeObjectURL(blobURL)
            
            image.onload = function() {
//                if (!!$('input[type=hidden]').length) {
//                    $('input[type=hidden]').remove()
//                }
                imgProps['image'] = compress(this, imgProps.type) // sending to canvas
    //            this.classList.add('thumb')
                $preview.prepend(this).append(clearButton)
                
                if (self.name != 'photo_filename') {
                    try {
                        window.oldInputs = prepInputs(oldInputs)
                    } catch(e) { window.oldInputs = prepInputs() }
                }
            }
        };
        
        return oldPhoto
    }
    
    function prepInputs(oldInputs) {    
        if (oldInputs) {
            $(oldInputs).remove()
        }
        var oldInputs = []
        for (prop in imgProps) {
            var toPHP = document.createElement('input')
            if (imgProps.hasOwnProperty(prop)) {
                toPHP.type = 'hidden'
                toPHP.name = 'images['+prop+']'
                toPHP.value = imgProps[prop]
                form.appendChild(toPHP)
                oldInputs.push(toPHP)
            }
        }
        return oldInputs
    
    }
    
    // === RESIZE ====
    
    function compress(img, fileType) {
        var max_width = fileinput.getAttribute('data-maxwidth');
        var max_height = fileinput.getAttribute('data-maxheight');
        
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
        ctx = canvas.getContext("2d");
        ctx.drawImage(img, 0, 0, width, height);
        
        //$('#preview').append(canvas); // do the actual resized preview
        
        return canvas.toDataURL(fileType,0.7); // get the data from canvas as 70% JPG (can be also PNG, etc.)
        
    }


    window.rotate = function(direction) {
        //var context = canvas.getContext('2d')
//        console.log(currentAngle)
        if (direction === 'left') {
            if (currentAngle === 0) {
                currentAngle = 360
            }
            currentAngle -= 90
        } else if (direction === 'right') {
            if (currentAngle === 360) {
                currentAngle = 0
            }
            currentAngle += 90
        }
        
        var cw = canvas.width, 
            ch = canvas.height, 
            cx = 0, 
            cy = 0
        
        switch(currentAngle){
            case 0: 
                cw = canvas.width
                ch = canvas.height
                iw = canvas.width
                ih = canvas.height
                break
            case 90:
                cw = canvas.height
                ch = canvas.width
                cy = canvas.height * (-1)
                iw = ch
                ih = cw
                break
            case 180:
                cx = canvas.width * (-1)
                cy = canvas.height * (-1)
                break
            case 270:
                cw = canvas.height
                ch = canvas.width
                cx = canvas.height * (-1)
                break
        }
        
        //ctx = canvas.getContext('2d')
        //ctx.clearRect(0, 0, cw, ch);

        ctx.clearRect(0,0,canvas.width, canvas.height)        
        canvas.width = cw
        canvas.height = ch




        ctx.rotate(currentAngle * TO_RADIANS)
        ctx.drawImage(image, cx, cy, iw, ih);

        
        $('#thumb img').attr('class', 'rotate'+currentAngle)
        
        if (oldInputs) {
            $(oldInputs).remove()
        }
        imgProps['image'] = canvas.toDataURL(imgProps.type, 1)
        try {
            window.oldInputs = prepInputs(oldInputs)
        } catch(e) { window.oldInputs = prepInputs() }
    }
    
    //return rotate

}())


// Let's make sure we're not uploading huge things
function checkFileSize(file) {
    var output;
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

    return output    
}

$('.no-formvalidation .step-one').ready(function(){
    var $requiredFields = $('input[type=text], textarea, #profile-input')
    var $requiredMessage = $('<p>Please fill out all fields and choose a profile photo</p>').addClass('required')
    
    
    $('.no-formvalidation .step-one').ready(function(){
        $requiredFields.each(function(){ 
            if (!this.value){ 
                this.flag = false
            } else { this.flag = true }
        })
        $requiredFields.on('change', function(){ 
            if (!!this.value) {
                this.flag = true
            }
        })
    })
    
    $('.no-formvalidation .step-one').submit(function(e){
        for (var i=0;i<$requiredFields.length-1; i++){
            if ($requiredFields[i].flag){
                continue
            } else { $.fancybox($requiredMessage); console.log('Not so fast hax0r boy. Fill out all fields first.'); return false}
        }
    })
})


$(document).ready(function(){
    infiniteScroll()
        
    // ***********************************************************************************************************************//
    // PROFILE SETUP PROCESS
    
    
   
    
    if (!!$('.setup').length) {
        var selector = ''
        var a = ['all', 'questions', 'actions', 'yours', 'students', 'profile']
        for (var i = 0; i<a.length;i++){
            if (i === a.length-1) {
                selector += '#nav-' + a[i]
            } else { 
                selector += '#nav-' + a[i] + ', '
            }
        }
        $disable = $('.setup').find($(selector))
        $disable.addClass('disable').attr('rel', 'ignore')
    }
    
    if (!!$('.step-one').length){
        menu = document.getElementById('menu-btn')
        navReveal = function(){
            menu.click()
        }
        window.setTimeout(navReveal, 500)
    }

    
    
    // ***********************************************************************************************************************//
    // EDIT PROFILE FORM

    $('#edit-details').click(function(e){
        e.preventDefault()
        
        if (!!$('#instructions').length) { // WE'RE ON FIRST-TIME PROFILE SETUP
            $('#fields, #instructions').toggleClass('visuallyhidden')
            if (!$('#clear').length){
                $('.filereader #profile-select').toggleClass('visuallyhidden')
            }
            $('#next').prop('disabled', false)
        
        } else if (!!$('#info').length) { // WE'RE ON THE USER'S PROFILE PAGE, WHICH THEY CAN EDIT
            $('#form, #info').toggleClass('visuallyhidden')
            if (!$('#clear').length){
                $('.filereader #profile-select').toggleClass('visuallyhidden')
            }
        }
        
        $(this).toggleClass('open')
    })
    
/*
    $('.no-filereader #profile-input').change(function(){
        $('#size').after('<p class="warning">Sorry, image previews are not supported by your browser.</p>')
    })
*/
//    if (!!$('#profile-input, #photo-input').length) {
//        Modernizr.load({
//            test : Modernizr.filereader,
//            nope : ['/introductions/js/vendor/jquery-ui/jquery-ui-position.js', '/introductions/js/vendor/filereader/jquery.FileReader.js', '/introductions/js/vendor/swfobject/swfobject.js' ],
//            complete : function() {
//                //c('completed modernizr testing')
//                
//                if (!Modernizr.filereader) {
//                    //c('filereader api is not supported. loading filereader polyfill')
//                    
//                    try {
//                        //c($('#profile-input'))
//                        $('#profile-input').fileReader({
//                            id : 'fileReaderSWF',
//                            filereader : '/introductions/js/vendor/filereader/filereader.swf',
//                            expressInstall : '/introductions/js/vendor/swfobject/expressInstall.swf',
//                            debugMode : false,
//                            callback : function(){ /* c('filereader polyfill loaded') */ }
//                        })
//        
//                        $('#profile-input').change(function(evt) {
//                            //c('change event triggered on #profile-input')
//                            read(evt.target.files)
//                        })
//                    } catch(e) { /* c('caught an error loading filereader polyfill: ' + e.message ) */ }
//                } else { /* c('filereader api supported') */}
//            }
//        })
//    }
    
    $('#preview').on('click', '#clear', function(e){ 
        try {
            c('click event triggered on #clear. calling fileClear()')
            fileClear(oldPhoto); 
        } catch(e) {
            fileClear()
        }
        $(this).detach() 
    })       
        


    //**********************************************************************************************************************//    
    // FILE INPUTS
    
    // Filereader API Posts
    $('.filereader .attach-media, .filereader #profile-select').click(function(){ 
        $(this).siblings('input').click() 
    })
    
    // FALLBACK TO DEFAULT INPUT FOR OLDER BROWSERS
    $('.no-filereader input[type=file]').removeClass('visuallyhidden')
    
    /* 
    $('.gt-ie9 #profile-select').click(function(){
        $('#profile-input').click()
    })
    */
    
    $('input[type=file]').change(function(){
    
        if (!!$('.upload-buttons').length) {
            $notSelected = $('input[type=file]').not(this)
            $notSelected.parent().addClass('disabled')
            $notSelected.prop('disabled', true)
        }
    })

    
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

    // FANCYBOX FOR NOTIFICATIONS
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
    
    // ***********************************************************************************************************************//
    // GLOBAL EVENT HANDLERS
    findIgnores()
    $ignoreMe.on('click', function(e){ e.preventDefault() })
    $('.no-csstransforms3d #menu-btn').click(function(e){
        e.preventDefault()
        $('#nav').toggleClass('open')
    })
    if (!Modernizr.mq('all')){ 
        $('.post-icon').addClass('visuallyhidden') 
    }
    
})