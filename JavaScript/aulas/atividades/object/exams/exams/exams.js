export class Exame {
    constructor(peso, gabarito) {
        this.peso = peso; //pesos das notas
        this.gabarito = gabarito //respostas certas
        this.exames = [] // exames dos estudantes
    }

    add(exame) { //adiciona o exame e as informações correspondentes a ele
        let nota = 0

        Object.keys(exame.respostas).forEach(questao => {
        // Obtem a resposta do aluno, a resposta do gabarito e o peso da questão
        // de acordo com a questão escolhida
                if (exame.respostas[questao] === this.gabarito[questao]){
                    nota += this.peso[questao] 
                }
            })

            exame.nota = nota
            this.exames.push(exame)
            //vai ser um array com vários objetos de alunos
    }
    avg() { //média
        let soma = 0
        this.exames.forEach(exame => {
            //para cada exame eu somo
            soma += exame.nota
            
        })
        //depois eu pego a soma geral e divido pela quantidade de itens do array
        return soma / this.exames.length
    }

    lt(limite) {
        // Retornar uma lista das notas menores que o limite
        const notas = this.exames.map(exame => {
            return exame.nota
        })

        return notas.filter(nota => nota < limite) //filtra as notas e as retorna
    }

    gt(limite) {
        //retornar lista de notas maiores que o limite
        const notas = this.exames.map(exame => {
            return exame.nota
        })

        return notas.filter(nota => nota > limite) //filtra as notas e as retorna
    }

    min(cont = 1) { 
        //retorna a menor nota, como o contador é 1 é apenas uma nota
        let notas = this.exames.map((resposta) => resposta.nota);
    
        notas.sort((a, b) => a - b);
    
        return notas.slice(0, cont);
    }

    //retorna a maior nota, como o contador é 1 é apenas uma nota
    max(cont = 1) { 
        let notas = this.exames.map((resposta) => resposta.nota);
    
        notas.sort((x, y) => x - y);
    
        return notas.slice(-cont);
    }
}
