function colorize(elementID) {
    const box = document.getElementById(elementID);
    box.addEventListener('click', function() {
        const boxes = document.querySelectorAll('.box');
        boxes.forEach(function(item) {
            if (item === div) {
                item.style.backgroundColor = '#FFF7C0';
            } else {
                item.style.backgroundColor = ''; 
            }
        });
    });
}