console.log($);

$.fn.makeGainsboro = function () {
    this.css({ color: 'rebeccapurple' });
    this.each(function (i, el) {
        var text = (i + 1) + " Gainsboro"
        $(el).text(text);
    })
}

$.fn.makeRainbowText = function () {
    console.log('Make rainbow text');
}

$(document).ready(function () {
    $('li').makeGainsboro();
})
