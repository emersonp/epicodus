var numberDic = {1: "one"};
    numberDic[2] = "two";
    numberDic[3] = "three";
    numberDic[4] = "four";
    numberDic[5] = "five";
    numberDic[6] = "six";
    numberDic[7] = "seven";
    numberDic[8] = "eight";
    numberDic[9] = "nine";
    numberDic[10] = "ten";
    numberDic[11] = "eleven";
    numberDic[12] = "twelve";
    numberDic[13] = "thirteen";
    numberDic[14] = "fourteen";
    numberDic[15] = "fifteen";
    numberDic[16] = "sixteen";
    numberDic[17] = "seventeen";
    numberDic[18] = "eighteen";
    numberDic[19] = "nineteen";
    numberDic[20] = "twenty";
    numberDic[30] = "thirty";
    numberDic[40] = "forty";
    numberDic[50] = "fifty";
    numberDic[60] = "sixty";
    numberDic[70] = "seventy";
    numberDic[80] = "eighty";
    numberDic[90] = "ninety";
var wordNumber = "";
var wordHundredNumber = "";
var wordThousandNumber = "";
var passNumberStr = "";
var passNumber = 0;
var passHunNumberStr = "";
var passHunNumber = 0;


var fourDigitNumerical = function(number) {
    if ( number.toString().length === 4 ) {
        var numberThouArray = number.toString().split("");
        wordThousandNumber += numberDic[numberThouArray[0]] + " thousand";
        passHunNumberStr = numberThouArray[1] + numberThouArray[2] + numberThouArray[3];
        passHunNumber = parseInt(passHunNumberStr);
        console.log(passHunNumber + "/" + wordThousandNumber );
        if ( passHunNumber > 0 ) {
            wordThousandNumber = wordThousandNumber + " " + threeDigitNumerical(passHunNumber);
        }
        return wordThousandNumber;
    }
}

var threeDigitNumerical = function(number) {
    if ( number.toString().length === 3 ) {
        var numberArray = number.toString().split("");
        wordHundredNumber += numberDic[numberArray[0]] + " hundred";
        passNumberStr = numberArray[1] + numberArray[2];
        passNumber = parseInt(passNumberStr);
        if ( passNumber > 0 ) {
            wordHundredNumber = wordHundredNumber + " and " + twoDigitNumerical(passNumber);
        }
        return wordHundredNumber;
    }
}

var twoDigitNumerical = function(twoDigitNumber) {
    if ( twoDigitNumber.toString().length === 2 ) {
        var numberArray = twoDigitNumber.toString().split("");
        var oneDigit = numberDic[numberArray[1]];
        var tenDigitNum = numberArray[0] * 10;
        var tenDigit = numberDic[tenDigitNum];
        if ( numberArray[0] === "1" ) {
            var joined = numberArray[0] + numberArray[1];
            wordNumber = numberDic[joined];
        } else if ( numberArray[1] === "0" ) {
            wordNumber = tenDigit;
        } else {
            wordNumber = tenDigit + "-" + oneDigit;
        }
        return wordNumber;
    } else {
        return numberDic[twoDigitNumber];
    }
}