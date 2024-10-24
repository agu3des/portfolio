import { Exame } from './examMon.js'

const pesos = {
  q1: 2,
  q2: 3
}

const gabarito = {
  q1: 'a',
  q2: 'b'
}

const exame = new Exame(pesos, gabarito)

const reposta1 = {
  estudante: 'Lucas',
  respostas: {
    q1: 'a',
    q2: 'b'
  }
}

exame.add(reposta1)

const reposta2 = {
  estudante: 'João',
  respostas: {
    q1: 'a',
    q2: 'c'
  }
}

exame.add(reposta2)

const reposta3 = {
  estudante: 'Maria',
  respostas: {
    q1: 'a',
    q2: 'b'
  }
}

exame.add(reposta3)

console.log(exame.avg());

console.log(exame.lt(6)) // notas menores que 6

console.log(exame.gt(10)) // notas maiores que 10


console.log(exame.min());
console.log([4]);

console.log(exame.max());
console.log([4]);