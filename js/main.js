
/*!
*
* Copyright (c) David Bushell | http://dbushell.com/
*
*/
;(function(window, document, undefined)
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
if (!!window.console){
    function c(a) { console.log(a) }
    function d(a) { console.dir(a) }
}

(function(){
    var canvas = document.createElement('canvas')
    var form = document.getElementById('form')
    
    var $clearButton = $('<button/>').attr({'class':'clear','id':'clear','type':'button'}).html('Clear') // user-intent to clear current inputs
    var $sizeEl = $('<span/>').addClass('size').attr('id','size')
    var $nameEl = $('<span/>').addClass('filename').attr('id','filename')
    
    var photoBag = $('input[type=hidden], canvas') // used in readfiles
    var $preview = $('#preview') // container for thumbnail and controls
    var $camera = $('#profile-select')
    var oldInputs = []
    
//    var image = new Image()
    var TO_RADIANS = Math.PI/180
    var currentAngle = 0
    var imgProps = {}
    var oldInputs, oldPhoto, size
    window.URL = window.URL || window.webkitURL
    
    $fileinput = $('.filereader .photo-input')
    $fileinput.change(function(e){
//            c('file api supported, calling change event on .filereader #photo-input')
        disabler(this)
        var file = this.files[0]
        imgProps['type'] = file.type
        imgProps['name'] = file.name
        imgProps['type'] = file.type        
                
         if (this.name === 'photo_filename') {
            if (!!$preview.find('img').length) { 
                // CLEAR ANY IMAGES INSIDE PREVIEW
                oldPhoto = $preview.find('img').detach()
//                    c('detaching placeholder image')
            }
        }
        
        profileImages(this.files)
        
        // PROFILE PHOTOS ARE HANDLED VIA SAFECRACKER.
        // NEED TO HOOK INTO SUBMISSION PROCESS AND READ IN DATA URI TO BINARY FILE
//        if (!!$('.step-one').length || !!$('.profile').length) { // PROFILE PHOTOS VIA SAFECRACKER
//                c('choosing a profile photo')
//            profileImages(this.files)
//        } else { // IMAGE POST PHOTOS, UPLOADED VIA POST
//                c('posting photo to feed')
//            postImages(file, 1000, 1000, 0.7, imgProps['type'])
//        }
    })

    profileImages = function(files){
//        c('calling read() on filelist object. unknown if passed via filereader polyfill or html 5 file api')
        var file = files[0]
        var reader = new FileReader()
        var image = new Image()
        reader.onload = function(event) {
//            c('filereader loaded. setting anonymous image source to data URL representation of file object. setting image to call updatePreview on load.')
            image.onload = function(){
                updatePreview(this)
            }
            image.src = event.target.result
            size = getSize(file)
        }
//        c('loading filereader with file object')
        reader.readAsDataURL(file)
    }
    
    updatePreview = function(img){
        
//        c('calling compress on anonymous image')
//        resized = compress(img, imgProps['type'])
//        d(resized)
        $preview.find('.thumb').prepend(img)
        
        if (!!$('.full-profile').length){
            $clearButton.html('Revert')
        }
        $preview.find('.specs').append($clearButton)
        $preview.addClass('loaded')
        $camera.toggleClass('visuallyhidden')
        $sizeEl.text(size).prependTo('.specs')
        $nameEl.text(file.name).prependTo('.specs')
    }
    
    getSize = function(file) {
        var fileLimit, limit
        var nBytes = file.size
        
        var output = nBytes + ' bytes'
        for (var multiples = ['KB', 'MB'], n = 0, approx = nBytes/1024; approx > 1; approx /= 1024, n++) {
            output = approx.toFixed(2) + ' ' + multiples[n]
        }
        
        return output  
    }

    fileClear = function(){
        $preview.find('img, #size, #filename').remove()
        
        if (!!oldInputs) {
            $(oldInputs).remove()
        }
        if (!!oldPhoto) {
            $preview.append(oldPhoto)   
        } else {
            $preview.removeClass('loaded')
        }
        if (!!$('canvas').length){
            $('canvas').remove()
        }
        if (!!$('#profile-input').length){
            $('#profile-input')[0].flag = false
        }
                
        var $inputs = $('input[type=file]')
        $inputs.val('').prop('disabled', false)
        $inputs.parent().removeClass('disabled')
        
        $camera.toggleClass('visuallyhidden')
    }
    
    IEimageCheck = function(file) {
        var size = getSize(file)
        var fileLimit = 2500000
        var limit = '2.5 MB'
        
        if (size > fileLimit) {
            fileClear()
            $sizeEl.text('Sorry, but the maximum file size for videos is ' + limit + '. This file is is ' + size).prependTo('.specs') 
            return false
        } else {
            $sizeEl.text(size).prependTo('.specs')
            $nameEl.text('File: ' + file.name + ' -- ').prependTo('.specs')
            $preview.append($clearButton)
        } 
        
    }
    
    videoHandler = function(file) {
        var size = getSize(file)
        var fileLimit = 15000000
        var limit = '15 MB'
        
        if (file.size > fileLimit) {
            fileClear()
            $sizeEl.text('Sorry, but the maximum file size for videos is ' + limit + '. ' + file.name + ' is ' + size).prependTo('.specs') 
            return false
        } else {
            $sizeEl.text(size).prependTo('.specs')
            $nameEl.text('File: ' + file.name + ' -- ').prependTo('.specs')
            $preview.append($clearButton)
        }   
    }
    
    audioHandler = function(file) {
        var size = getSize(file)
        var fileLimit = 5000000
        var limit = '5 MB'
        
        if (file.size > fileLimit) {
            fileClear()
            $sizeEl.text('Sorry, but the maximum file size for videos is ' + limit + '. ' + file.name + ' is ' + size).prependTo('.specs') 
            return false
        } else {
            $sizeEl.text(size).prependTo('.specs')
            $nameEl.text('File: ' + file.name + ' -- ').prependTo('.specs')
            $preview.append($clearButton)
        }
    }
    
    disabler = function(self) {
//        d(self)
        if (!!$('.upload-buttons').length) {
            $notSelected = $('input[type=file]').not(self)
            $notSelected.parent().addClass('disabled')
            $notSelected.prop('disabled', true)
        }

    }
    
    // ***********************************************************************************************************************//
    // WIP COMPRESSION SCHEME
    postImages = function(file, max_width, max_height, compression_ratio, imageEncoding){
//        c('setting up variables')
        var fileLoader = new FileReader(),
            canvas = document.createElement('canvas'),
            context = null,
            imageObj = new Image(),
            blob = null;            
    
        //create a hidden canvas object we can use to create the new resized image data
        canvas.id     = "hiddenCanvas";
//        canvas.width  = max_width;
//        canvas.height = max_height;
        canvas.style.visibility = "hidden";   
        document.body.appendChild(canvas);  
    
        //get the context to use 
        context = canvas.getContext('2d');  
    
        // check for an image then
        //trigger the file loader to get the data from the image         
        if (file.type.match('image.*')) {
//            c('reading file')
            fileLoader.readAsDataURL(file);
        } else {
//            c('not an image...')
            alert('File is not an image');
        }
    
        // setup the file loader onload function
        // once the file loader has the data it passes it to the 
        // image object which, once the image has loaded, 
        // triggers the images onload function
        fileLoader.onload = function() {
//            c('file reader loaded')
            var data = this.result;
//            c('setting image source to data') 
            imageObj.src = data;
        };
    
        fileLoader.onabort = function() {
            alert("The upload was aborted.");
        };
    
        fileLoader.onerror = function() {
            alert("An error occured while reading the file.");
        };  
    
    
        // set up the images onload function which clears the hidden canvas context, 
        // draws the new image then gets the blob data from it
        imageObj.onload = function() {  
            
//            c('inside image load')
//            c(this)
            // Check for empty images
//            c(this.width + ', ' + this.height)
            
            if(this.width == 0 || this.height == 0){
                alert('Image is empty');
            } else {          
            
                var currentWidth = this.width
                var currentHeight = this.height
                var newWidth, newHeight
                
                // calculate the width and height, constraining the proportions
                if (currentWidth > currentHeight) {
                    if (currentWidth > max_width) {
                        //height *= max_width / width;
                        newHeight = Math.round(currentHeight *= (max_width / currentWidth))
                        newWidth = max_width
                    } else { // if we're smaller than max dimensions, keep the dimensions the same
                        newHeight = currentHeight 
                        newWidth = currentWidth
                    }
                } else {
                    if (currentHeight > max_height) {
                        //width *= max_height / height;
                        newWidth = Math.round(currentWidth *= (max_height / currentHeight))
                        newHeight = max_height
                    } else { // see above...
                        newHeight = currentHeight  
                        newWidth = currentWidth 
                    }
                }      
                
//                c(newWidth + ', ' + newHeight)
                canvas.width = newWidth
                canvas.height = newHeight
                context.clearRect(0,0,newWidth,newHeight);
                context.drawImage(imageObj, 0, 0, this.width, this.height, 0, 0, newWidth, newHeight);    
    
                //dataURItoBlob function available here:
                // http://stackoverflow.com/questions/12168909/blob-from-dataurl
                blob = dataURItoBlob(canvas.toDataURL(imageEncoding, compression_ratio))
//                d(blob)
                size = getSize(blob)
//                c(size)
                
                imgProps['image'] = canvas.toDataURL(imageEncoding, compression_ratio)
//                d(imgProps['image'])
                //pass this blob to your upload function
//                upload(blob);
                updatePreview(this)
                prepInputs()
                
            }       
        };
    
        imageObj.onabort = function() {
            alert("Image load was aborted.");
        };
    
        imageObj.onerror = function() {
            alert("An error occured while loading image.");
        };
    
    }
    prepInputs = function() {    
        if (!!oldInputs) {
            $(oldInputs).remove()
        }
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
        $fileinput[0].value = "";
        return oldInputs
    
    }
    dataURItoBlob = function(dataURL) {
        var BASE64_MARKER = ';base64,';
        if (dataURL.indexOf(BASE64_MARKER) == -1) {
            var parts = dataURL.split(',');
            var contentType = parts[0].split(':')[1];
            var raw = parts[1];
            
            return new Blob([raw], {type: contentType});
        }
        
        var parts = dataURL.split(BASE64_MARKER);
        var contentType = parts[0].split(':')[1];
        var raw = window.atob(parts[1]);
        var rawLength = raw.length;
        
        var uInt8Array = new Uint8Array(rawLength);
        
        for (var i = 0; i < rawLength; ++i) {
            uInt8Array[i] = raw.charCodeAt(i);
        }
        
        return new Blob([uInt8Array], {type: contentType});
    }
    compress = function(img, fileType) {
//        c('setting max width & height')
        var max_width = $fileinput.data('maxwidth')
        var max_height = $fileinput.data('maxheight')
        
//        c('grabbing images current dimensions', img.width, img.height)
        var currentWidth = img.width
        var currentHeight = img.height
        var newWidth, newHeight
        
        // calculate the width and height, constraining the proportions
        if (currentWidth > currentHeight) {
            if (currentWidth > max_width) {
                //height *= max_width / width;
                newHeight = Math.round(currentHeight *= max_width / currentWidth)
                newWidth = max_width
            }
        } else {
            if (currentHeight > max_height) {
                //width *= max_height / height;
                newWidth = Math.round(currentWidth *= max_height / currentHeight)
                newHeight = max_height
            }
        }
        
//        c('new dimensions are: ', newWidth, newHeight)
        // resize the canvas and draw the image data into it
        canvas.width = newWidth
        canvas.height = newHeight
        
//        c('creating canvas context')
        ctx = canvas.getContext("2d");
//        c('drawing image to canvas')
        ctx.drawImage(img, 0, 0, newWidth, newHeight);
        
        //$('#preview').append(canvas); // do the actual resized preview
//        c('returning data URL representation of canvas')
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
    blobReader = function(files){
//        c('grabbing the file')
        var file = files[0]
//        d(file)
//        c('generating the file reader')
        var reader = new FileReader()
//        c('generating an anonymous image')
        var image = new Image()
//        c('creating a new Int8Array, I think')
        
//        c('defining reader onload')
        reader.onload = function(event) {
//            c('inside reader. creating a new blob')
            var int8 = new Int8Array(event.target.result)
//            d(int8)
            
            var blob = new Blob([int8], {type : 'image/png'})
//            d(blob)
//            c('setting up a url to the blob')
            var url = window.URL.createObjectURL(blob) || window.webkitURL.createObjectURL(blob)
//            d(url)
            
//            c('defining image onload to be updatePreview')
            image.onload = updatePreview
//            c('setting anonymous image src to url')
            image.src = url
//            c('getting file size')
            size = getSize(file)
            $sizeEl.text(size).prependTo('.specs')
            $nameEl.text(file.name).prependTo('.specs')
            
//            c('try replacing filelist with blob?')
            $fileinput[0].files[0] = blob
//            d($fileinput[0].files)
        }
        
//        c('calling readAsArrayBuffer on int8')
        reader.readAsArrayBuffer(file)
    }

}())
    


$(document).ready(function(){

//    infiniteScroll()
    
    if ($.cookie('last_viewed_notifications') === undefined) {
        var t = new Date()
        $.cookie('last_viewed_notifications', t.getTime(), {expires: 365, path : '/'})
        $.cookie('last_viewed_actions', t.getTime(), {expires: 365, path : '/'})
    }
   
        
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
        $disable = $('.setup').find(selector)
        $disable.addClass('disable').attr('rel', 'ignore')
    }

            
            // Fancybox blocks the first click on modals, so we have to manually handle the first event.
            $('body').one('click', '#terms-content', function(){ 
                window.open(this.href, '_blank') 
            })

    
    $('#back-to-one').click(function(){
        window.location = 'https://shanghai.nyu.edu/introductions/setup/step-one'
    })
    
    // ***********************************************************************************************************************//
    // EDIT PROFILE FORM

    $('#edit-details').click(function(e){
        e.preventDefault()
        
        if (!!$('#instructions').length) { // WE'RE ON FIRST-TIME PROFILE SETUP
            $('#fields, #instructions').toggleClass('visuallyhidden')
            if (!$('#clear').length){
                $('#profile-select').toggleClass('visuallyhidden')
            }
            $('#next').prop('disabled', false)
        
        } else if (!!$('#info').length) { // WE'RE ON THE USER'S PROFILE PAGE, WHICH THEY CAN EDIT
            $('#profile-form, #info').toggleClass('visuallyhidden')
            if (!$('#clear').length){
                $('#profile-select').toggleClass('visuallyhidden')
            }
        }
        
        $(this).toggleClass('open')
    })       
    
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
        var t = new Date()
        $.cookie('last_viewed_notifications', t.getTime(), {expires: 365, path : '/'})
    })    
    
    $('#actions-icon').click(function(){
        $('.actions-count').addClass('viewed')
        var t = new Date()
        $.cookie('last_viewed_actions', t.getTime(), {expires: 365, path : '/'})
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
    if (!Modernizr.mq('only all')){ 
        $('.post-icon').addClass('visuallyhidden')
        if (!!$('.step-one').length && !!$.cookie('terms')){
            menu = document.getElementById('menu-btn')
            navReveal = function(){
                menu.click()
            }
            window.setTimeout(navReveal, 250)
        }
    }
    
    // COMMENT TIME STAMPS
    $('.comment-form').submit(function(e){ 
        t = new Date()
        $(this).find('input[name=comment_date]').val(t.getTime())
    })
    
    //**********************************************************************************************************************//    
    // FILE INPUTS
    
    // Filereader API Posts
    $('.filereader .attach-media, .filereader #profile-select').click(function(){ 
        $(this).siblings('input').click() 
    })
    
    $('.filereader #video-input').change(function(e){
        disabler(this)
        videoHandler(this.files[0])
    })
    
    $('.filereader #audio-input').change(function(e){
        disabler(this)
        audioHandler(this.files[0])
    })
    
    // FALLBACK TO DEFAULT INPUT FOR OLDER BROWSERS
    $unsupported = $('.no-filereader input[type=file]')
    $unsupported.removeClass('visuallyhidden')
    $unsupported.change(function(){
        disabler(this)
    })
    
    
    // CLEAR PHOTO FUNCTION
    $('#preview').on('click', '#clear', function(e){ 
        try {
//            c('click event triggered on #clear. calling fileClear()')
            fileClear(oldPhoto); 
        } catch(e) {
            fileClear()
        }
        $(this).detach() 
    })
    

    
    
    // ***********************************************************************************************************************//
    // FORM VALIDATION
    $requiredMessage = $('<p>Please fill out all fields and choose a profile photo</p>').addClass('required')
    

    $('.formvalidation form').submit(function(e){
        if (this.checkValidity()) {
            $(this).find('input[type=submit]').prop('disabled', 'true')
        } else {
            if (this.id='setup-form'){$.fancybox($requiredMessage)}
            return false;
        }
    })
    
    
    Modernizr.load([{
 
        test : Modernizr.formvalidation,
        nope : '/introductions/js/vendor/validate.min.js',
        complete : function(){
            validator = new FormValidator('new-post', [{
                name : 'friends_status',
                display : 'Post',
                rules : 'required'
            }], function(errors, event){
                $form = $(this.form)
                if (errors.length === 0) {
                    $form.find('input[type=submit]').prop('disabled', 'true')
                }
            })
            setupValidator = new FormValidator('setup-form', [{
                name : 'photo_filename',
                display : 'Photo',
                rules : 'required'
            }, {
                name : 'location',
                display : 'Hometown',
                rules : 'required'
            }, {
                name : 'occupation',
                display : 'Current City',
                rules : 'required'
            }, {
                name  : 'interests',
                display : 'Interests',
                rules : 'required'
            }], function(errors, event) {
                $form = $(this.form)
                if (errors.length > 0) {
                    $.fancybox($requiredMessage)
                }
                
            })
        }
    /*
}, {
     
        test : Modernizr.filereader,
        nope : ['/introductions/js/vendor/jquery-ui/jquery-ui-position.js', '/introductions/js/vendor/filereader/jquery.FileReader.js', '/introductions/js/vendor/swfobject/swfobject.js' ],
        complete : function() {
                c('completed modernizr testing')
                c('filereader api is not supported. loading filereader polyfill')

                c($('#profile-input').length)
                c($('#photo-input').length)
                if (!!$('#profile-input').length) {
                    $('#profile-input').fileReader({
                        id : 'fileReaderSWF',
                        filereader : '/introductions/js/vendor/filereader/filereader.swf',
                        expressInstall : '/introductions/js/vendor/swfobject/expressInstall.swf',
                        debugMode : false,
                        callback : function(){  c('filereader polyfill loaded') }
                    })
    
                } else {
                    $('#photo-select').fileReader({
                        id : 'fileReaderSWF',
                        filereader : '/introductions/js/vendor/filereader/filereader.swf',
                        expressInstall : '/introductions/js/vendor/swfobject/expressInstall.swf',
                        debugMode : false,
                        callback : function(){  c('filereader polyfill loaded') }
                    })
                }
    
    
                $('#profile-input').on('change', function(evt) {
                    //c('change event triggered on #profile-input')
                    if (!!$('#preview').find('img').length) { 
                        // CLEAR ANY IMAGES INSIDE PREVIEW
                        oldPhoto = $('#preview').find('img').detach()
                           c('detaching placeholder image')
                    }
                    profileImages(evt.target.files)
                    updatePreview(evt.target.files[0])
                    d($(this).val())
                })
                $('#photo-select').change(function(evt) {
                    c('change event triggered on #profile-input')
                    file = evt.target.files[0]
                    d(evt.target.files[0])
                    IEimageCheck(evt.target.files[0])
                    
                    //postImages(evt.target.files[0], 1000, 1000, 0.7, imgProps['type'])
                    //updatePreview(evt.target.files[0])
                })
            }
*/
    }])
})
