var fs = require('fs');
var http = require('http');

http.createServer(function (req, res) {
    console.log(req.url)

    if (req.url === "/") {

        res.writeHead(200, {
            "Content-Type" : "text/html"
        });
        fs.createReadStream(__dirname + '/data.txt').pipe(res);
        
    } else if  (req.url === "/json") {

        res.writeHead(200, {
            "Content-Type" : "application/json"
        });
        var brother = {
            firstName: "Grouch",
            lastName: "Marx"
        }
        res.end( JSON.stringify(brother));

    } else {

        res.writeHead(404, {
            "Content-Type" : "text/html"
        });
        res.end("Something whent wrong\n")

    }


}).listen(3005, "127.0.0.1");
