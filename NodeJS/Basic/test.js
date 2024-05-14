const Sequelize = require("sequelize");
const sequelize = new Sequelize("livraria", "root", "senha", {
    host: "localhost",//qual máquina está o bd
    dialect: "mysql"
});
sequelize.authenticate().then(function(){
    console.log("Conectado com sucesso!")
}).catch(function(erro){
    console.log("Falha ao se conectar: "+erro)
})//verifica se conseguiu conectar ao bd