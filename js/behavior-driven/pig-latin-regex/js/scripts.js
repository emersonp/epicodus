var pigLatinSentence = function(sentence) {
    var sentenceArray = sentence.toLowerCase().split(" ");
    for ( var j = 0; j < sentenceArray.length; j++ ) {
        sentenceArray[j] = pigLatinWord(sentenceArray[j]);
    }
    return sentenceArray.join(" ");
}

var pigLatinWord = function(word) {
    //var wordArray = word.toLowerCase().split("");
    var pigPattern = /^[bcdfghj-nprstv-z]*[aeiou]{1}/;
    var pigQuPattern = /^[bcdfghj-nprstv-z]*qu{1}/;
    if ( pigPattern.test(word) ) {
        var extraction = pigPattern.exec(word) + "";
        var extractionLength = extraction.length;
        extraction = extraction.slice(0, extractionLength-1);
        var nonPigWord = word.substring(extractionLength-1);
        word = nonPigWord + extraction + "ay";
    } else if ( pigQuPattern.test(word) ) {
        var extraction = pigQuPattern.exec(word) + "";
        var extractionLength = extraction.length;
        extraction = extraction.slice(0, extractionLength);
        console.log(extraction);
        console.log(extractionLength);
        var nonPigWord = word.substring(extractionLength);
        word = nonPigWord + extraction + "ay";
    }
    return word;
}









// Array Remove - By John Resig (MIT Licensed)
Array.prototype.remove = function(from, to) {
  var rest = this.slice((to || from) + 1 || this.length);
  this.length = from < 0 ? this.length + from : from;
  return this.push.apply(this, rest);
};