var calcFibo = function(variable) {
    var fiboArray = [0,1];
    
    while ( fiboArray.length < variable) {
        var newNum = fiboArray[fiboArray.length-1] + fiboArray[fiboArray.length-2];
        fiboArray.push(newNum);
    }
    
    return fiboArray[variable-1];
}

$(document).ready(function() {
  $("form").submit(function(event) {
    var inputVar = parseInt($("input#inputVar").val());
      
    var calcedVar = calcFibo(inputVar);

    $(".input").text(inputVar);
    $(".calced").text(calcedVar);

    $("#result").show();
    
    event.preventDefault();
  });
});