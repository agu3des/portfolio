console.log('hi');
let vai = 4;
console.log(vai);
console.log(5+5);
if (vai == 5){
    console.log(true);
}
else {
    console.log(false);
}


let cont = 0
for (let flag = 2; flag <= 14; flag +=2){ //aqui só serve para determinar a quantidade de vezes
    console.log(cont)
    cont ++ //vai de 1 em 1
} 

for (let flag = 2; flag <= 14; flag +=2){
    console.log(flag) 
} 


let n1 = 2
let n2 = 3
let soma = n1 + n2 
const saida = `A soma de ${n1} + ${n2} é igual a ${soma}`//f' 
console.log(saida) 










let sequence = '';

for (let flag = 0; flag <= 99; flag += 1) { ///define a repetição
    if (flag < 10){
        sequence += '0' + flag;
    }
    sequence += flag + ' ';
    if (flag % 10 === 9)
    sequence += '\n';
    else {
        sequence += ' ';
    }

}
console.log(sequence);
//
for (let decimal = 0; decimal <= 9; decimal ++){ // ++ é a mesma coisa que +1
    for (let unit = 0; unit <= 9; unit++){
        sequence += decimal + String(unit) + (unit === 9 ? '\n' : ' '); // operadores ternarios ? e :, é como se fosse o if e o else, como está escrito lá em cima

    }
}
console.log(sequence);


// para ir de 99 até 0
let sequence1 = '';

for (let flag = 99; flag >= 0; flag -= 1) { ///define a repetição
    if (flag < 10){
        sequence1 += '0' + flag;
    }
    sequence1 += flag + ' ';
    if (flag % 10 === 0)
    sequence1 += '\n';
    else {
        sequence1 += ' ';
    }

}

// função
function sum(a, b){
    return a + b;
}
console.log(sum(1))

// função em variavel anonymous/lambda fuction

const addition = function (a, b){
    return a + b;
}
console.log(addition(1,2));

// arrow function, é a mesma coisa da anterior, ele só troca =>
const minus =  (a,b) => {
    return a - b;
};

// também pode ser escrita dessa forma
const substractioin = (a, b) => a -b;

// rest param. A reticências transforma em um array = lista
const multiply = (...numbers) => {
    console.log(numbers);
}
multiply(1,2,3,4);
multiply(1,2)

// default param. Ele usa o numero que foi definido dentro da função, tipo o 1 que foi definido para o b
function divide(a, b = 1){
    return a / b;
}
console.log(divide(2))
console.log(divide(2,2))