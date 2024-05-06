function clock() {

    var now = new Date();

    var hours = String(now.getHours()).padStart(2, '0');
    var minutes = String(now.getMinutes()).padStart(2, '0');
    var seconds = String(now.getSeconds()).padStart(2, '0');

    time = document.getElementById("text");

    time.textContent = hours + ":" + minutes + ":" + seconds;

    setInterval(clock, 1000)
}