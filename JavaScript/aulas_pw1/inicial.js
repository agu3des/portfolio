// cria uma variável
let soma = 0;
let numAtual = 1;

// continua o laço enquanto a expressão for verdadeira
while(numAtual <= 10) {
  soma = soma + numAtual;
  numAtual++;
}

//função para logar no console do desenvolvedor o resultado
console.log(soma);


// não seria mais fácil o código abaixo?
console.log(sum(range(1,10)));


console.log(typeof "javascript")
console.log(typeof 13)
console.log(typeof true);


console.log(10 + 5)
console.log(20 - 4)
console.log(5 * 4)
console.log(10 ** 2) //exponenciação


console.log("Este texto começa em uma linha...\ne conclui na outra")
console.log(`Este texto começa em uma linha...
e conclui na outra`)


console.log(`Meu nome é ${"SEU_NOME"}`)


console.log(1 < 2) //true
console.log(1 > 2) //false
console.log("java" < "javascript") //true
console.log("java" < "python") //true
console.log("java" != "java") //false
console.log("java" === "java") //true
console.log("carro" <= "terra") //true
console.log(10 >= 100) //false


console.log(9 * null);
console.log(9 * undefined);
console.log("5" - 1);
console.log("5" + 1);
console.log("cinco" * 10);
