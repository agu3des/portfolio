var somaFunc = require("./Somar"); //a nossa variável tá recebendo tudo que vem do módulo
//retorna o módulo dentro de uma variável
var subFunc = require("./Subtrair"); //utilizar para carregar bibliotecas
var multFunc = require("./Multiplicar");
var divFunc = require("./Dividir");

console.log(somaFunc(1,2));
console.log(subFunc(1,2));
console.log(multFunc(1,2));
console.log(divFunc(1,2));