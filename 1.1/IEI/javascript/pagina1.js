for(var i =0; i < 3; i++){
    document.write("asokdsad" - 1)
    document.write("<br>")
}

function sum(x1, x2){
    return x1 + x2
}

function subtractionInNaturals(x1, x2){
    if (x2 > x1){
        return 0
    } else {
        return x1 - x2
    }
}

function division(x1, x2){
    if (x2 == 0){
        return false
    } else {
        return x1 / x2
    }
}

function multiplication(x1, x2){
    return x1 * x2
}


document.write(sum(1, "2"), '<br>' ,sum(1, 2))
document.write(subtractionInNaturals(1, 3))

document.write('3' == 3)
document.write('3' === 3)

// var a = 'sadasd';
// switch (a) {
//     case "abc": alert("string abc"); break;
//     case 3: alert("inteiro 3"); break;
//     default: alert("outro");
// }


document.write('<br>')
var n = 1;
do {
    document.write('a')
    n++
} while (n < 10)

document.write('<br>')

n = 1
while (n < 10) {
    document.write('b')
    n++
}
