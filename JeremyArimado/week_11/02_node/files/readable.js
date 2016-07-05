var fs = require('fs');
// var readable = fs.createReadStream(__dirname + '/data.txt');
// // console.log(readable);
//
//
// readable.on('data', function (chunk) {
//     console.log(chunk)
// })


// var readable = fs.createReadStream(__dirname + '/data.txt', {
//     encoding: 'utf8'
// });
// // console.log(readable);
//
//
// readable.on('data', function (chunk) {
//     console.log(chunk)
// })


var realReadable = fs.createReadStream(__dirname + '/data.txt', {
    encoding: 'utf8',
    highWaterMark: 1024,
});

// console.log(readable);
realReadable.on('data', function (chunk) {
    console.log(chunk.length)
});
