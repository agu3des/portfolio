//do 0 ao 99
let result = ''; //cria uma variável vazia

for (let number = 0; number <= 99; number += 1) { //define a quantidade de repetições
  const whiteSpace = number % 10 === 9 ? '\n' : ' '; //espaço entre o nºs / como quero de 10 em 10 se o resto for 9 eu corto para a próxima linha
  // ? = depois da vígua talvez
  const value = number < 10 ? `0${number}` : number; //se o nº for menor que 10 adicione o zero na frente
  result += value + whiteSpace; //a sequência + o valor = se for menor que 10 + o pulo de linha
}

console.log(result); //mostre tudo isso na tela = sequência


//5 em 5
let result1 = '';

for (let decimal = 0; decimal <= 9; decimal += 1) {
  for (let unit = 0; unit <= 9; unit += 1) {
    const whiteSpace = unit === 9 ? '\n' : ' ';
    result1 += decimal + (unit + whiteSpace);
  }
}

console.log(result1);


//reverso
let result2 = '';

for (let number = 99; number >= 0; number -= 1) { //iverte o início e o fim, e ao invés de somar 1 vc subtrai
  const whiteSpace = number % 10 ? ' ' : '\n';
  const value = number < 10 ? `0${number}` : number;
  result2 += value + whiteSpace;
}

console.log(result2);


//ímpares
let result3 = '';

for (let number = 99; number >= 0; number -= 2) { //começa do 1 e vai pular de 2 em 2, ou seja, os pares
  const whiteSpace = number % 10 === 1 ? '\n' : ' '; //confirmação, pois n tem resto = 0 que é par
  const value = number < 10 ? `0${number}` : number;
  result3 += value + whiteSpace;
}

console.log(result3);



//angelica 
let sequence = '';
for (let flag = 0; flag <= 99; flag += 1){
  if (flag < 10){
    sequence += '0' + flag + ' '; //eu
  }
  else {
    sequence += flag + ' ';
  }
  if (flag % 10 === 9)
  sequence += '\n';
  else{
    sequence += ' ';
  }
}
console.log(sequence);