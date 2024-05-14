var http = require('http'); //web
//abrir um servidor http
http.createServer(function(req,res){res.end("Hello World! Welcome to my website!")}).listen(8081);
                //qual porta de rede você quer abrir
console.log("Servidor rodando!")
