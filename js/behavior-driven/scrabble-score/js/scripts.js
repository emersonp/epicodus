var wordPoint = function(word) {
    var wordArray = word.split("");
    var totalScore = 0;
    for ( var i = 0; i < wordArray.length; i++ ) {
        totalScore += letterPoint(wordArray[i]);
    }
    return totalScore;
}

var letterPoint = function(letter) {
    letter = letter.toLowerCase();
    var point1 = /[aeioulnrst]/;
    var point2 = /[dg]/;
    var point3 = /[bcmp]/;
    var point4 = /[fhvwy]/;
    var point5 = /k/;
    var point8 = /[jx]/;
    var point10 = /[qz]/;
    if ( point1.test(letter) ) {
        return 1;
    } else if ( point2.test(letter) ) {
        return 2;
    } else if ( point3.test(letter) ) {
        return 3;
    } else if ( point4.test(letter) ) {
        return 4;
    } else if ( point5.test(letter) ) {
        return 5;
    } else if ( point8.test(letter) ) {
        return 8;
    } else if ( point10.test(letter) ) {
        return 10;
    }
}