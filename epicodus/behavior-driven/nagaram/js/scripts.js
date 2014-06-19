var sortWord = function(word) {
    var sortedWord = "";
    var sortedWordArray = word.split("");
    sortedWordArray.sort();
    sortedWordArray.forEach(function(letter) {
        sortedWord += letter;
    });
    return sortedWord;
}

var nagaram = function(inputWord, compareWord) {
    console.log( inputWord + "/" + compareWord );
    var inputArray = inputWord.split("").sort();
    var compareArray = compareWord.split("").sort();
    console.log( inputArray + "/" + compareArray );
        
    for ( var i = 0; i < compareArray.length; i++ ) {
        if ( inputArray[i] != compareArray[i] ) {
            return false;
        }
    }
    return true;
}
            