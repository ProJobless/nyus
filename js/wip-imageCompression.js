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
        var max_width = $modernPhotoInput.data('maxwidth')
        var max_height = $modernPhotoInput.data('maxheight')
        
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
            $modernPhotoInput[0].files[0] = blob
//            d($modernPhotoInput[0].files)
        }
        
//        c('calling readAsArrayBuffer on int8')
        reader.readAsArrayBuffer(file)
    }
