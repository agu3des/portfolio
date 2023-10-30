
const cep = {
    cep: '01001-000',
    logradouro: 'Praça da Sé',
    complemento: 'lado ímpar',
    bairro: 'Sé',
    localidade:	'São Paulo',
    uf:	'SP',
    unidade:'',
    ibge: 3550308,
    gia: 1004,
}

class CEP {
    constructor(
        logradouro,
        complemento,
        bairro,
        localidade,
        uf,
        unidade,
        ibge,
        gia
        ) {
            this.logradouro =
            this.complemento =
            this.bairro =
            this.localidade =
            this.uf =
            this.unidade =
            this.ibge = 
            this.gia = 
        }
}
// como se tivesse chamando o construtor, ent ele vai lá na classe
const newCep = new CEP {
    '01001-000',
    'Praça da Sé',
    'lado ímpar',
    'Sé',
    'São Paulo',
    'SP',
    '',
    3550308,
    1004,
}