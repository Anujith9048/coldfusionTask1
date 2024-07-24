function validate() {
    var inputImage = document.getElementById("file").files[0];
    
    if (inputImage) {
        var imageSize = inputImage.size;
        
        var maxSize = 1048576;
        
        if (imageSize > maxSize) {
            alert("Error: The image size is larger than 1 MB.");
            event.preventDefault()
        }
    }
}
