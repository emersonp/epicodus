var calcFibo = function(variable, fiboArray) {
    
    if ( fiboArray.length < variable) { 
        var newNum = fiboArray[fiboArray.length-1] + fiboArray[fiboArray.length-2];
        fiboArray.push(newNum);
        fiboArray = calcFibo( variable, fiboArray);
    }
    
    return fiboArray;
}

$(document).ready(function() {
  $("form").submit(function(event) {
    var inputVar = parseInt($("input#inputVar").val());
    var fiboArray = [0,1];  
    var calcedArray = calcFibo(inputVar, fiboArray);

    $(".input").text(inputVar);
    $(".calced").text(calcedArray[calcedArray.length - 1]);

    $("#result").show();
    
    event.preventDefault();
  });
});