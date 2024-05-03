const express = require("express"); //evitar que sobreescreva a variável e dê erro na aplicação
var app = express(); //cria uma intância, cópia inteira //é a principal desse sistema


app.get("/", function(req, res){
    //res.send("Seja bem-vindo ao meu app"); manda uma informação
    res.sendFile(__dirname+"/Html/index.html")//manda um arquivo
    //__dirname - diretório raiz da aplicação
});

app.get("/sobre", function(req, res){
    //res.send("Minha página sobre");
    res.sendFile(__dirname+"/Html/sobre.html")
});

app.get("/blog", function(req, res){
    res.send("Bem-vindo ao meu blog");
});


app.get("/ola1", function(req, res){
    res.send("Olá!");
});

app.get("/ola/:nome/:cargo/:cor/", function(req, res){
    res.send("<h1>Olá "+req.params.nome+"</h1>"+"<h2>Seu cargo é: "+req.params.cargo+"</h2>"+"<h3>Sua cor favorita é: "+req.params.cor+"</h3>"); //chamar a função send uma vez
    // res.send("<h2>Seu cargo é: "+req.params.cargo+"</h2>");
    // res.send("<h3>Sua cor favorita é: "+req.params.cor+"</h3>"); //esses dois dão erro
});



app.listen(8081, function(){
    console.log("Servidor rodando na url http://localhost:8081");
});//função do express, que pede um único parâmetro obrigatório, uma porta
//tem que ser a última do código para poderr rodar