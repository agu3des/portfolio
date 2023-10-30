import { Exame } from './exams.js'

const peso = {
  q_1: 2,
  q_2: 3,
  q_3: 5
}

const gabarito = {
  q_1: 'a',
  q_2: 'b',
  q_3: 'c'
}

const exame = new Exame(peso, gabarito)

const reposta1 = {
  estudante: 'Arthur',
  respostas: {
    q_1: 'a',
    q_2: 'b',
    q_3: 'c'
  }
}

const reposta2 = {
  estudante: 'Ananda',
  respostas: {
    q_1: 'a',
    q_2: 'c',
    q_3: 'b'
  }
}

const reposta3 = {
  estudante: 'Aurora',
  respostas: {
    q_1: 'a',
    q_2: 'c',
    q_3: 'c'
  }
}


exame.add(reposta1)
exame.add(reposta2)
exame.add(reposta3)

console.log(`Média =`,exame.avg()); 

console.log(`Notas menores que 7:`,exame.lt(7)) // notas menores que 7
console.log(`Notas maiores que 2:`,exame.gt(2)) // notas maiores que 2


console.log(`Menor nota:`,exame.min()); //menor nota
console.log(`MAior nota:`,exame.max()); //maior nota