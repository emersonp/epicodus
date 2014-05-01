var pigLatinSentence = function(sentence) {
    var sentenceArray = sentence.toLowerCase().split(" ");
    for ( var j = 0; j < sentenceArray.length; j++ ) {
        sentenceArray[j] = pigLatinWord(sentenceArray[j]);
    }
    return sentenceArray.join(" ");
}

var pigLatinWord = function(word) {
    var wordArray = word.toLowerCase().split("");
    if ( wordArray[0] === "a" || wordArray[0] === "e" || wordArray[0] === "i" || wordArray[0] === "o" || wordArray[0] === "u" ) {
        wordArray.push("ay");
    } else if ( wordArray[0] != "q" && ( wordArray[1] === "a" || wordArray[1] === "e" || wordArray[1] === "i" || wordArray[1] === "o" || wordArray[1] === "u" ) ) {
        var tempLetter = wordArray[0];
        wordArray.splice(0, 1);
        wordArray.push(tempLetter + "ay");
    } else if ( wordArray[0] != "q" && wordArray[1] != "q" && ( wordArray[2] === "a" || wordArray[2] === "e" || wordArray[2] === "i" || wordArray[2] === "o" || wordArray[2] === "u" ) ) {
        var tempArray = wordArray.splice(0, 2);
        wordArray = wordArray.concat(tempArray);
        wordArray.push("ay");
    } else if ( wordArray[0] != "q" && wordArray[1] != "q" && wordArray[2] != "q" && ( wordArray[3] === "3" || wordArray[3] === "e" || wordArray[3] === "i" || wordArray[3] === "o" || wordArray[3] === "u" ) ) {
        var tempArray = wordArray.splice(0, 3);
        wordArray = wordArray.concat(tempArray);
        wordArray.push("ay");
    } else if ( ( wordArray[0] === "q" && wordArray[1] === "u" ) || ( ( wordArray[1] === "q" && wordArray[2] === "u" ) && ( wordArray[0] != "a" || wordArray[0] != "e" || wordArray[0] != "i" || wordArray[0] != "o" || wordArray[0] != "u" ) ) ) {
        if ( wordArray[1] === "u" ) {
              var spliceIndex = 2;
        } else {
              var spliceIndex = 3;
        }
        var tempArray = wordArray.splice(0, spliceIndex);
        wordArray = wordArray.concat(tempArray);
        wordArray.push("ay");
    }
    return wordArray.join("");
}









// Array Remove - By John Resig (MIT Licensed)
Array.prototype.remove = function(from, to) {
  var rest = this.slice((to || from) + 1 || this.length);
  this.length = from < 0 ? this.length + from : from;
  return this.push.apply(this, rest);
};