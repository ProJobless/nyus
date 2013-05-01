Modernizr.load([{
 /*
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
                    var $requiredMessage = $('<p>Please fill out all fields and choose a profile photo</p>').addClass('required')
                    $.fancybox($requiredMessage)
                }
                
            })
        }
    },
*/
/*     { */ test : Modernizr.filereader,
            nope : ['/introductions/js/vendor/jquery-ui/jquery-ui-position.js', '/introductions/js/vendor/filereader/jquery.FileReader.js', '/introductions/js/vendor/swfobject/swfobject.js' ],
            complete : function() {
                c('completed modernizr testing')
                    //c('filereader api is not supported. loading filereader polyfill')

                        //c($('#profile-input').length)
//                        if (!!$('#profile-input').length) {
                            $('#profile-input').fileReader({
                                id : 'fileReaderSWF',
                                filereader : '/introductions/js/vendor/filereader/filereader.swf',
                                expressInstall : '/introductions/js/vendor/swfobject/expressInstall.swf',
                                debugMode : true,
                                callback : function(){  c('filereader polyfill loaded') }
                            })
/*
                        } else {
                            $('#photo-input').fileReader({
                                id : 'fileReaderSWF',
                                filereader : '/introductions/js/vendor/filereader/filereader.swf',
                                expressInstall : '/introductions/js/vendor/swfobject/expressInstall.swf',
                                debugMode : true,
                                callback : function(){  c('filereader polyfill loaded') }
                            })
                        }
*/
        
                        $('#profile-input').on('change', function(evt) {
                            //c('change event triggered on #profile-input')
                            if (!!$('#preview').find('img').length) { 
                                // CLEAR ANY IMAGES INSIDE PREVIEW
                                oldPhoto = $('#preview').find('img').detach()
                //                    c('detaching placeholder image')
                            }
                            profileImages(evt.target.files)
//                            updatePreview(evt.target.files[0])
                            d($(this).val())
                        })
                        $('#photo-input').on('change', function(evt) {
                            //c('change event triggered on #profile-input')
                            postImages(evt.target.files[0], 1000, 1000, 0.7, imgProps['type'])
//                            updatePreview(evt.target.files[0])
                        })

            }
        }
    ])