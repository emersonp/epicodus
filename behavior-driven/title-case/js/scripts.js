var titleCase = function(word) {
        var firstChar = word.substring( 0, 1 );
        firstChar = firstChar.toUpperCase();
        var tail = word.substring( 1 );
        word = firstChar + tail;
        return word;
};

var titleCaseSentence = function(sentence) {
    var sentence = sentence.toLowerCase();
    var sentenceArray = sentence.split(" ");
    var sentenceCased = "";
    for ( var i = 0; i < sentenceArray.length; i++ ) {
        var tempWord = sentenceArray[i];
        if ( tempWord === "and" || tempWord === "the" || tempWord === "of" || tempWord === "upon" || tempWord === "at" || tempWord === "a" || tempWord === "an" || tempWord === "but" || tempWord === "either" || tempWord === "or" ) {
            if ( i === 0 ) {
                sentenceArray[i] = titleCase(sentenceArray[i]);
                sentenceCased += sentenceArray[i];
                if ( i < sentenceArray.length - 1 ) {
                    sentenceCased += " ";
                }
            } else {
                sentenceCased += sentenceArray[i];
                if ( i < sentenceArray.length - 1 ) {
                    sentenceCased += " ";
                }
            }
        } else {
            sentenceArray[i] = titleCase(sentenceArray[i]);
            //console.log(sentenceArray[i]);
            sentenceCased += sentenceArray[i];
            if ( i < sentenceArray.length - 1 ) {
                sentenceCased += " ";
            }
        }
    }
    return sentenceCased;
};

$(document).ready(function() {
    $("form").submit(function(event) {
        var userInput = $("input#title").val();
    
    var formattedTitle = titleCaseSentence(userInput);
    $(".not").text(formattedTitle);

    $("#result").show();
    
      event.preventDefault();
  });
});
