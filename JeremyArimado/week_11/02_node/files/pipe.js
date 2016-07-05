var fs = require('fs');

var readable = fs.createReadStream(__dirname + '/data.txt', {
    encoding: 'utf8',
});

var writable = fs.createWriteStream(__dirname + '/data-copy.txt')

readable.pipe(writable);
