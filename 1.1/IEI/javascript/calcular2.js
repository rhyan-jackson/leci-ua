function sum(x1, x2) {
    return x1 + x2
}

function subtract(x1, x2) {
    return x1 - x2;
}

function division(x1, x2) {
    if (x2 == 0) {
        return "Not defined"
    } else {
        return x1 / x2
    }
}

function multiplication(x1, x2) {
    return x1 * x2
}


function operation(){

    let op = document.getElementById('operation');

    document.getElementById('op-view').innerHTML = op.value

    return op.value;
}


function calculate(){
    let op1 = parseFloat(document.getElementById('op1').value);
    let op2 = parseFloat(document.getElementById('op2').value);
    let res_box = document.getElementById('res');
    var op = operation();
    console.log('Operation: ' + op);
    
    let res

    switch(op) {
        case "+":
            res = sum(op1, op2);
            console.log(res);
            break;
        case "-":
            res = subtract(op1, op2);
            console.log(res);
            break;
        case "x":
            res = multiplication(op1, op2)
            console.log(res)
            break;
        case "/":
            res = division(op1, op2)
            console.log(res)
            break;

        default: console.log('Operador inválido: ' + op)
    }

    res_box.value = res;
}