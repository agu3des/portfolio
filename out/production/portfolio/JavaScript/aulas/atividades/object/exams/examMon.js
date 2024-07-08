export  class Exame {
    constructor(pesos, gabarito) {
        this.pesos = pesos;
        this.gabarito = gabarito
        this.exames = [] // exames dos estudantes
    }

    add(exame) {
        let nota = 0

        Object.keys(exame.respostas).forEach(questao => {
                // Obtem a resposta do aluno, a resposta do gabarito e o peso da questão
                // de acordo com a questão
                if (exame.respostas[questao] === this.gabarito[questao]){
                    nota += this.pesos[questao] //você não tem acesso direto
                }
                // console.log(exame.respostas[questao])
                // //ele vai me passar apenas as respostas
                // console.log(this.gabarito[questao])
            })

            exame.nota = nota

            this.exames.push(exame)
            //vai ser um array com vários objetos de alunos
    }
    avg() {
        let soma = 0
        //this = self de python
        this.exames.forEach(exame => {
            //para cada exame eu somo
            soma += exame.nota
            //depois eu pego a soma geral
        })
        return soma / this.exames.leght
    }

    lt(limite) {
        // Retornar uma lista das notas menores que o limite
        const notas = this.exames.map(exame => {//vai me devolver um array com 
            return exame.nota
        })

        return notas.filter(nota => nota < limite)
        // const notasNoLimite = notas.filter(nota => nota < limite)
        // //para pegar apenas as notas específicas
        // return notasNoLimite
        // //ou direto o return
    }

    gt(limite) {
        //retornar lista de notas cujo seja
        const notas = this.exames.map(exame => {//vai me devolver um array com 
            return exame.nota
        })

        return notas.filter(nota => nota > limite)
        // const notasNoLimite = notas.filter(nota => nota > limite)
        // //para pegar apenas as notas específicas
        // return notasNoLimite
        // //ou direto o return
    }

    min(count = 1) {
        let notas = this.exames.map((resposta) => resposta.nota);

        notas.sort((a, b) => a - b);

        return notas.slice(0, count);
    }

    max(count = 1) {
        let notas = this.exames.map((resposta) => resposta.nota);

        notas.sort((a, b) => a - b);

        return notas.slice(-count);
    }
}