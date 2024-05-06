function move(){
    var btn = document.getElementById('btn');

    btn.style.position = "absolute";

    btn.style.top = (Math.random() * window.innerHeight) + "px";
    btn.style.left = (Math.random() * window.innerWidth) + "px";
}

function changeColor(){
    let btn = document.getElementById('btn');
    
    btn.style.backgroundColor = "rgb(" + Math.random() * 255 + "," + Math.random() * 255 + "," + Math.random() * 255 + ")"
}