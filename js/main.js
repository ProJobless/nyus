if (!String.prototype.trim) {
    String.prototype.trim = function () {
        return this.replace(/^\s*(\S*(?:\s+\S+)*)\s*$/, "$1");
    };
}
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

function c(a) { 
    if (!!window.console){ 
        console.log(a) 
    } else {
        return false
    }
}
function d(a) { 
    if (!!window.console) {
        console.dir(a) 
    } else {
        return false
    }
}
$(document).ready(function(){
//(function(){
    $('.loading').addClass('begin')
    
    var canvas = document.createElement('canvas')
    var form = document.getElementById('new-post') || document.getElementById('setup-form')
    
    var $clearButton = $('<button/>').attr({'class':'clear','id':'clear','type':'button'}).html('Clear') // user-intent to clear current inputs
    var $sizeEl = $('<span/>').addClass('size').attr('id','size')
    var $nameEl = $('<span/>').addClass('filename').attr('id','filename')
    
    var photoBag = $('input[type=hidden], canvas') // used in readfiles
    var $preview = $('#preview') // container for thumbnail and controls
    var $camera = $('#profile-select')
    var oldInputs = []
    var props = {}
    var validProfile = false
    var validForm = true
    var fileReaderFlag = false
    var validatorFlag = false
    
//    var image = new Image()
    var TO_RADIANS = Math.PI/180
    var currentAngle = 0
    
    var oldPhoto, size
    window.URL = window.URL || window.webkitURL
    
    $modernPhotoInput = $('.filereader .photo-input')
    
    
    
    Modernizr.load([{
 
        test : Modernizr.formvalidationapi && Modernizr.formvalidation,
        nope : root+'/js/vendor/validate.min.js',
        complete : function(){
            if (!Modernizr.formvalidationapi || !Modernizr.formvalidation){
                validator = new FormValidator('new-post', [{
                    name : 'friends_status',
                    display : 'Post',
                    rules : 'required'
                }], function(errors, event){
                    $form = $(this.form)
                    if (errors.length === 0 || $form.find('input[name=friends_status]')[0].value.trim()!=='') {
                        $form.find('input[type=submit]').prop('disabled', true)
                        $clearButton.detach()
                        $('.loading').addClass('begin')
                        $form.submit(function(){
                            return false
                        })
                        return true
                    } else {
                        if (!$('.required').length) {
                            $form.prepend('<div class="required" />')
                            $('.required').html('Please include a message and try submitting again.');
                        }
                    }
                })
                setupValidator = new FormValidator('setup-form', [{
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
                            validForm = false
                        } else {
                            validForm = true
                        }
                    }
                )
                $('#setup-form').submit(function(e) {
                    if (!validProfile || !validForm){
                        $.fancybox($requiredMessage)
                        return false
                    }
                })
                // enable post button
                $('.post-form #submitBtn').prop('disabled', false)
            } else {
                $('.new-post').on('submit', '.post-form', function(e){
                    $this = $(this)
                    if (this.checkValidity() || this.value.trim()!=='') {
                        $this.find('input[type=submit]').prop('disabled', true)
                        $clearButton.detach()
                        $('.loading').addClass('begin')
                        $this.submit(function(){
                            return false
                        })
                        return true
                    } else {
                        if (this.id === 'setup-form'){$.fancybox($requiredMessage)}
                        return false;
                    }
                })
	        // enable post button
                $('.post-form #submitBtn').prop('disabled', false)
            }
            validatorFlag = true
            if (validatorFlag && fileReaderFlag) {
                // get rid of loading animation
                $('.loading').removeClass('begin')
            }
        }
    }, { 
        test : Modernizr.filereader,
        nope : [root+'/js/vendor/jquery-ui/jquery-ui-position.js', root+'/js/vendor/filereader/jquery.FileReader.js', root+'/js/vendor/swfobject/swfobject.js' ],
        complete : function() {
/*                 c('completed modernizr testing') */
                if (!Modernizr.filereader){
/*                     c('filereader api is not supported. loading filereader polyfill') */
                    $('input[type=file]').fileReader({
                        id : 'fileReaderSWF',
                        filereader : root+'/js/vendor/filereader/filereader.swf',
                        expressInstall : root+'/js/vendor/swfobject/expressInstall.swf',
                        debugMode : false,
                        callback : function(){  
                             // enable upload buttons
                            var $inputs = $('input[type=file]')
                            $inputs.prop('disabled', false)
                            $inputs.parent().removeClass('disabled')
                            fileReaderFlag = true
                            if (validatorFlag && fileReaderFlag) {
                                // get rid of loading animation
                                $('.loading').removeClass('begin')
                            }
                        }
                    })
                    $('input[type=file]').on('change', function(evt) {
                        disabler(this)
                        if (this.name === 'photo_filename') {
                            if (!!$preview.find('img').length) { 
                                // CLEAR ANY IMAGES INSIDE PREVIEW
                                oldPhoto = $preview.find('img').detach()
                //                    c('detaching placeholder image')
                            }
                        }
//                        validProfile = true
                        var filelist = evt.target.files
                        filelist[0].input = this.id
                        props['name'] = filelist[0].name
                        props['type'] = filelist[0].type
                        props['size'] = filelist[0].size        
                        outdatedProcessor(filelist, this)
                    })
                } else {
                    fileReaderFlag = true
                     // enable upload buttons
                    var $inputs = $('input[type=file]')
                    $inputs.prop('disabled', false)
                    $inputs.parent().removeClass('disabled')
                    if (validatorFlag && fileReaderFlag) {
                        // get rid of loading animation
                        $('.loading').removeClass('begin')
                    }
                }
                 
            }
        }
    ])

    $modernPhotoInput.change(function(e){

        disabler(this)
        var file = this.files[0]     
                
         if (this.name === 'photo_filename') {
            if (!!$preview.find('img').length) { 
                // CLEAR ANY IMAGES INSIDE PREVIEW
                oldPhoto = $preview.find('img').detach()
//                    c('detaching placeholder image')
            }
        }
        
        modernProcessor(this.files)
        
    })

    
    outdatedProcessor = function(filelist, self) {
//            c('calling procesFile() on filelist object. unknown if passed via filereader polyfill or html 5 file api')
        $('.loading').addClass('begin')
        var file = filelist[0]
        var reader = new FileReader()
        if (!sizeCheck(file)){
            $('.loading').removeClass('begin')
            return false
        } else {
            $sizeEl.text(size).prependTo('.specs')
            $nameEl.text(file.name + ': ').prependTo('.specs')
            $preview.append($clearButton)
        }
        
        if (file.type.match('image')){
            var image = new Image()
            reader.onload = function(event) {
                props.data = event.target.result
                image.src = event.target.result
            }
            image.onload = function(){
                updatePreview(this)
//                $sizeEl.text(size).prependTo('.specs')
//                $nameEl.text(file.name + ': ').prependTo('.specs')
            }
            reader.onloadend = function(){
                prepInputs(file, self)
                $('.loading').removeClass('begin')
            }
        } else {
            reader.onload = function(event) {
                updatePreview()
                props.data = event.target.result
            }
            reader.onloadend = function(){
                prepInputs(file, self)
                $('.loading').removeClass('begin')
            }
        }
    /*     console.log('loading filereader with file object') */
        reader.readAsDataURL(file)
    }

    modernProcessor = function(filelist){
/*         c('calling processFile() on filelist object. unknown if passed via filereader polyfill or html 5 file api') */
        $('.loading').addClass('begin')
        var file = filelist[0]
        var reader = new FileReader()
        if (!sizeCheck(file)){
            $('.loading').removeClass('begin')
            return false
        } else {
            $sizeEl.text(size).prependTo('.specs')
            $nameEl.text(file.name + ': ').prependTo('.specs')
            $preview.append($clearButton)
        }
        if (file.type.match('image')){
            var image = new Image()
            reader.onload = function(event) {
//                props.data = event.target.result
                image.src = event.target.result
            }
            image.onload = function(){
                updatePreview(this)
//                $sizeEl.text(size).prependTo('.specs')
//                $nameEl.text(file.name + ': ').prependTo('.specs')
            }
//            reader.onloadend = function(){
//                prepInputs(file)
//            }
        } else {
            reader.onload = function(event) {
                updatePreview()
//                props.data = event.target.result
            }
//            reader.onloadend = function(){
//                prepInputs(file)
//            }
        }
        reader.onloadend = function() {
            $('.loading').removeClass('begin')
        }
    /*     console.log('loading filereader with file object') */
        reader.readAsDataURL(file)
    }
    
    updatePreview = function(img){
        
        $preview.find('.thumb').prepend(img)
        
        if (!!$('.full-profile').length){
            $clearButton.html('Revert')
        }
//        $preview.find('.specs').append($clearButton)
        $preview.addClass('loaded')
        $camera.toggleClass('visuallyhidden')
    }
    
    getSize = function(size) {
        var nBytes = size
        
        var output = nBytes + ' bytes'
        for (var multiples = ['KB', 'MB'], n = 0, approx = nBytes/1024; approx > 1; approx /= 1024, n++) {
            output = approx.toFixed(2) + ' ' + multiples[n]
        }
        
        return output  
    }
    
    sizeCheck = function(file){
        var redableLimit, rawLimit, limit, id
        size = getSize(file.size)
        
        if (file.type.match("image")) {
            rawLimit = 2500000
            limit = '2.5 MB'
            id = 'images'
        } else if (file.type.match("audio")) {
            rawLimit = 5000000
            limit = '5 MB'
            id = 'audio clips'
        } else if (file.type.match("video")) {
            rawLimit = 15000000
            limit = '15 MB'
            id = 'videos'
        } else {
            alert('Only image, video, and audio file types are allowed.')
            return false
        }
        
        if (file.size > rawLimit) {
            readableLimit = getSize(rawLimit)
            fileClear()
            $sizeEl.text('Sorry, but the maximum file size for ' + id + ' is ' + readableLimit + '. ' + file.name + ' is ' + size).prependTo('.specs')
            return false
        } else {
            return true
        }   
    }

    fileClear = function(){
        $preview.find('img, #size, #filename').remove()
        
        if (!!oldInputs) {
            $(oldInputs).remove()
        }
        if (!!oldPhoto) {
            // Regular Post
            $preview.append(oldPhoto)   
        } else {
            // Profile setup
            $preview.removeClass('loaded')
        }
        if (!!$('canvas').length){
            $('canvas').remove()
        }
                
        var $inputs = $('input[type=file]')
        $inputs.val('').prop('disabled', false)
        $inputs.parent().removeClass('disabled')
        
    }
    
    imageCheck = function(file) {
        var readableLimit
        var rawLimit = 2500000
        var limit = '2.5 MB'
        size = getSize(file.size)
        
        if (file.size > rawLimit) {
            readableLimit = getSize(rawLimit)
            fileClear()
            $sizeEl.text('Sorry, but the maximum file size for images is ' + readableLimit + '. ' + file.name + ' is ' + size).prependTo('.specs') 
            return false
        } else {
            return true
        } 
        
    }
    
    videoHandler = function(file) {
        var readableLimit
        var rawLimit = 15000000
        var limit = '15 MB'
        size = getSize(file.size)
        
        if (file.size > rawLimit) {
            readableLimit = getSize(rawLimit)
            fileClear()
            $sizeEl.text('Sorry, but the maximum file size for videos is ' + readableLimit + '. ' + file.name + ' is ' + size).prependTo('.specs') 
            return false
        } else {
            $sizeEl.text(size).prependTo('.specs')
            $nameEl.text(file.name + ': ').prependTo('.specs')
            $preview.append($clearButton)
        }   
    }
    
    audioHandler = function(file) {
        var readableLimit
        var rawLimit = 5000000
        var limit = '5 MB'
        size = getSize(file.size)
        
        if (file.size > rawLimit) {
            readableLimit = getSize(rawLimit)
            fileClear()
            $sizeEl.text('Sorry, but the maximum file size for audio clips is ' + readableLimit + '. ' + file.name + ' is ' + size).prependTo('.specs') 
            return false
        } else {
            $sizeEl.text(size).prependTo('.specs')
            $nameEl.text(file.name + ': ').prependTo('.specs')
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
    
    // FALLBACK TO DEFAULT INPUT FOR OLDER BROWSERS
    $unsupported = $('.no-filereader input[type=file]')
    $unsupported.removeClass('visuallyhidden')
    
    prepInputs = function(file, self) {    
        c('inside prepInputs')
        oldInputs = []
        var name = self.name
        c('setting up inputs')
        
        c('looping through')
        for (prop in props) {
            var toPHP = document.createElement('input')
            if (props.hasOwnProperty(prop)) {
                c('testing: ' + prop)
                c(name)
                c(props)
                d(form)
                toPHP.type = 'hidden'
                toPHP.name = name + '['+prop+']'
                toPHP.value = props[prop]
                form.appendChild(toPHP)
                oldInputs.push(toPHP)
            }
        }
        return oldInputs
    
    }
     
        
    // ***********************************************************************************************************************//
    // PROFILE SETUP PROCESS
    
    if (!!$('.setup').length) {
        var selector = ''
        var a = ['all', 'questions', 'actions', 'yours', 'students', 'profile', 'name']
        for (var i = 0; i<a.length;i++){
            if (i === a.length-1) {
                selector += '#nav-' + a[i]
            } else { 
                selector += '#nav-' + a[i] + ', '
            }
        }
        $disable = $('.setup').find(selector)
        $disable.addClass('disable').attr({'rel':'ignore', 'href' : ''})
    }
    
    if (!Modernizr.formvalidationapi || !Modernizr.formvalidation) {
        $('#profile-input').on('change', function(){
            validProfile = true  
        })
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
            } else {
                $('#clear').toggleClass('visuallyhidden')
            }
            $('#next').prop('disabled', false)
        
        } else if (!!$('#info').length) { // WE'RE ON THE USER'S PROFILE PAGE, WHICH THEY CAN EDIT
            $('#profile-fields, #info').toggleClass('visuallyhidden')
            if (!$('#clear').length){
                $('#profile-select').toggleClass('visuallyhidden')
            } else {
                $('#clear').toggleClass('visuallyhidden')
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
    
    // CATCH FOR FANCYBOXES WITHIN FANCYBOXES
    $('body').on('click', '.fancybox-overlay .posted-audio, .fancybox-overlay .posted-video', function(e){
        e.preventDefault()
        $.fancybox.close()
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
    $('#notifications a.notification').click(function(e){
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
    
    $('.notifications-page a').click(function(e){
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
        //$('.actions-count').addClass('viewed')
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
    
    // LENGTHY COMMENT SWAPPERS
    $('.see-more').click(function(e){ 
        var $this = $(this)
        var fullText = $this.next('.overflow').text()
        $this.parent().text(fullText)
        e.stopPropagation()
        e.preventDefault()
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
    
    // CLEAR PHOTO FUNCTION
    $('#preview').on('click', '#clear', function(e){ 
        try {
//            c('click event triggered on #clear. calling fileClear()')
            fileClear(oldPhoto); 
        } catch(e) {
            fileClear()
        }
        if (!!$('#profile-select').length) {
            $('#profile-select').toggleClass('visuallyhidden')
        }
        $(this).detach() 
    })
    

    
    
    // ***********************************************************************************************************************//
    // FORM VALIDATION
    $requiredMessage = $('<p>Please fill out all fields and choose a profile photo</p>').addClass('required')
    
        
    
})
