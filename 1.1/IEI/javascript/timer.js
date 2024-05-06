var timer = null;
function decreaseImage(element) {

    if(timer == null) timer = setInterval("decreaseImage("+element.id+")", 10)

    var height = parseInt(element.style.height, 10) - 10;
    element.style.height = height + "px";

    if(height <= 0){
        window.clearInterval(timer);
        timer = null;
    }
};

function resetImage(element) {

    if (timer == null) timer = setInterval("resetImage("+element.id")", 10)

    var height = parseInt(element.style.height, 10) + 10;

    element.style.height = height + "px";

    if(height >= 450){
        window.clearInterval(timer);
        timer = null;
    }
};