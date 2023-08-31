const numbers = [10, 20, 30]; //3 elementos no array
console.log(numbers);
console.log(numbers[0]);
console.log([numbers.length -1]);
console.log(numbers.at(-1));

//adicionar valores a uma array vazio
const names = [];
names[0] = 'Ananda';
names[1] = 'Guedes';
names[2] = 'do Ó';
console.log(names);
//mudando um valor
names[2] = '- Anandinha';
console.log(names);

//mudando o array original
const values = [0, 1, 2]
values.push(3); //adicionar no fim
values.unshift(-1); //adicionar no início
console.log(values);

//múltiplos tipos
const pessoa = [20231370020, 'Ananda', 19, ['LS', 'ED']]; //2 numbers e uma string

//desustruturação de array
// const id = person[0];
// const name = person[1];
const [id, name] = pessoa;
const [studentId, , studentAge, [firstSubject]] = pessoa; //pega só os escritos
console.log(studentId); //já entende que é o índice 0
console.log(firstSubject) //se vc só digitou 1 valor ele só pega 1 valor, no caso o índice zero
console.log(person[3][0])
//pegar dois valores do array e jogar na variável: const [name, setName] = useState('') 

//spread operator: clonagem de array
const phone = '+55158665974515';
const student = [...person, 'ananda@gmail.com', phone]; //os 3 pontinhos significa que pega tudo
//person.push('ananda@gmail.com');
console.log(student)


//interações
for (let i = 0; 1 < numbers.length; 1++) {
    console.log(numbers[i])
}
for (const number of numbers) {
    console.log(numbers)
}
for (const index in numbers) {
    console.log(index)
    console.log(numbers[index])
}
for (const [index, number] of numbers.entries()) { //enxerga o índice em conjunto com o valor tipo: [[0,10],[1,20]]
    console.log(index)
    console.log(numbers) 
}

const array = [1, 5, 16, 87, 100]
const ordemMeMa = (a, b) => a - b;
console.log(array);
console.log(array.sort()); //pega só o algoritmo a esqueda
console.log(array.sort(ordemMeMa));
// reverse();
array.splice(3, 0, 22); //mexer dentro do array --> posição - quero remover - valor
array.splice(2, 1); //removeu indice - removeu
//array.splice(3, 1, 22); para remover e adicionar números
console.log(array);
console.log(array.join('; '));
console.log(array.includes(9)); //inclui tal número --> false ou true
console.log(array.slice(2)); // faz um recorte a partir desse índice

for(const elem of array){ //uma forma de fazer
    console.log(elem*2);
}
console.log('-------------')
array.forEach(mult); // outra forma de fazer / para cada elemento
function mult(e){
    console.log(e*2);
}
console.log('-------------')
array.forEach( (elem) => console.log(elem*2)); // outra forma de fazer
console.log('-------------')
const arrayDuplicado = array.map((elem) => elem*2);
console.log(arrayDuplicado)
console.log('-------------')
array.push(200);
const arrayPar = array.filter(
    (elem) => {
       const isPar = elem % 2 == 0;
       const menorCiq = (elem <= 50); 

       return isPar && menorCiq;
    }
);
console.log(arrayPar)
console.log('-------------')
const somaPares = array.filter(
    (elem) => elem % 2 == 0
).reduce(//reduz o array em um único número
    (total, valorAtual) => total + valorAtual
);
console.log(somaPares);