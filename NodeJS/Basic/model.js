const Sequelize = require("sequelize");
const sequelize = new Sequelize("livraria", "root", "senha", {
    host: "localhost",//qual máquina está o bd
    dialect: "mysql"
});

const Postagem = sequelize.define('postagens', {
    titulo: {
        type: Sequelize.STRING //limitaado - dizer que seu campo vai ser do tipo string - varchar
    },
    conteudo: {
        type: Sequelize.TEXT //ilimitado
    }
})

//Postagem.sync({force:true}) //sincronizar o moel com o mysql
            //garante a criação da tabela

//Postagem.create({ //inserir na tabela
//    titulo: "Como eu era antes de você",
//    conteudo: "Romance e muito amor"
//})

const Usuario = sequelize.define('usuarios', {
    nome: {
        type: Sequelize.STRING
    },
    sobrenome: {
        type: Sequelize.STRING
    },
    idade: {
        type: Sequelize.INTEGER
    },
    email: {
        type: Sequelize.STRING
    }
})
//Usuario.sync({force:true})
// Usuario.create({
//     nome: 'Ananda',
//     sobrenome: 'Guedes',
//     idade: 19,
//     email: 'anandaguedes@email.com'
// })