var cryptoSquare = function(cryptoPhrase) {
    var cryptoInputArray = toArray(cryptoPhrase.toLowerCase());
    var root = findSquare( cryptoInputArray.length, 1 );
    var outputArray = [];
    
    for ( var column = 0; column < root; column++ ) {
        for ( var row = 0; row < root; row++ ) {
            var cryptoIndex = row * root + column;
            if ( cryptoIndex < cryptoInputArray.length ) {
                outputArray.push(cryptoInputArray[cryptoIndex]);
            }
        }
    }
    
    return outputArray;
}

var toArray = function(word) {
    var wordArray = word.split("");
    var newArray = [];
    for ( var n = 0; n < wordArray.length; n++ ) {
        if ( wordArray[n] != " " && wordArray[n] != "." && wordArray[n] != "," && wordArray[n] != "!" && wordArray[n] != "?" && wordArray[n] != "-" ) {
            newArray.push(wordArray[n]);
        }
    }
    return newArray;
}

var fromArray = function(array) {
    var spaceIndex = 0;
    var tempIndex = 0;
    while ( tempIndex < array.length ) {
        spaceIndex++;
        if ( spaceIndex > 5 ) {
            spaceIndex = 0;
            array.splice(tempIndex, 0, " ");
        }
        tempIndex++;
    }
    
    var newString = array.join("");
    return newString;
}

var findSquare = function(length, root) {
    if ( root * root >= length ) {
        return root;
    } else {
        return findSquare(length, (root+1));
    }
}

$(document).ready(function() {
    $("form").submit(function(event) {
        var userInput = $("input#phrase").val();
    
    var cryptoArray = cryptoSquare(userInput);
    var cryptoPhrase = fromArray(cryptoArray);
    $(".calced").text(cryptoPhrase);

    $("#result").show();
    
      event.preventDefault();
  });
});