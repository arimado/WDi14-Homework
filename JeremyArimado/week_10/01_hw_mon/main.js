var reverse = (array) => {
    var reversed = [];
    array.forEach( item => reversed.unshift(item) )
    return reversed;
}

var flatten = (array2d) => {

    var flatArray = [];

    var flat = (array2d) => {
        array2d.forEach((item) => {
            if (Array.isArray(item)) {
                flat(item);
                return;
            }
            flatArray.push(item);
        })
    }

    flat(array2d);

    return flatArray;
}

flatten(["Hello", ["World", 42]]);
