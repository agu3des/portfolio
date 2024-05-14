const express = require("express");
const app = express(); 
const handlebars = require('express-handlebars')
const Sequelize = require("sequelize");


// Config
    //Template Engine                              //template padrão da sua aplicação
        app.engine('handlebars', handlebars({defaultLayout: 'main'}))
        app.set('view engine', 'handlebars')//usar o template handlebars pro engine
    // Conexão com o banco de dados mysql
        const sequelize = new Sequelize("teste", "root", "Anand@2004", {
            host: "localhost",
            dialect: "mysql"
        });

//Rotas
    app.get('/cad', function(req,res){
        res.render('form') //exibir um arquivo - renderizar ele
    });


app.listen(8081, function(){
    console.log("Servidor rodando na url http://localhost:8081");
});