var express = require('express');
var app = express();

app.get('/', function (req, res) {
    res.send('Hello wosssrsld \n');
});

app.listen(3000, function () {
    console.log('server is running visit http://127.0.0.1:3000');
})
