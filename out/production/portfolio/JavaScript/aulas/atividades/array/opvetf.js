//VETOR
const array = [1, 2, 3, 4, 5]
console.log(array);
console.log('-------------');


//SOMA
const soma = array.reduce( //reduz o array em um único número
    (total, valorAtual) => total + valorAtual
);
console.log(soma);
console.log('-------------');


//MULTIPLIAÇÃO
array.forEach(mult);
function mult(e){
    console.log(e*2);
}
console.log('-------------');


//SOMA DOS ÍMPARES
const somaImpares = array.filter(
    (elem) => elem % 2 != 0 //se diferente de 0 é ímpar
).reduce( //reduz o array em um único número
    (total, valorAtual) => total + valorAtual
);
console.log(somaImpares);