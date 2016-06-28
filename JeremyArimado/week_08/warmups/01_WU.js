// There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have grains of wheat. One grain on the first square of a chess board. Two grains on the next. Four on the third, and so on.
//
// There are 64 squares on a chessboard.
//
// Write a program that shows
//
// how many grains were on a particular square;
// how many grains were on each square; and
// the total number of grains on the board.
// Do it in JS (why not use Underscore to take advantage of some of its helpful, Ruby-esque methods?). When you're done, implement a simple HTML UI (feel free to use jQuery).

//0 = 1
//1 * 2
//2 * 2
//


const createBoard = () => {

} 

const grainsOnSquare = (index) => {
    if (index === 0) {
        return 1;
    } else {
        return index * 2;
    }
}

const showGrains = () => {

}
