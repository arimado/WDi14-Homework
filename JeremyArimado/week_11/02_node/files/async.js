var fs = require("fs");

fs.readFile(__dirname +
    "/data.txt",
    'utf8',
    function (error, data) {
        console.log(data);
    }
);
