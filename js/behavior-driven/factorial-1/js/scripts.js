var calcFactorial = function(variable) {
    var factorialTotal = variable;
    for ( var i = variable - 1; i >= 1; i-- ) {
        factorialTotal *= i;
    }
    return factorialTotal;
}

$(document).ready(function() {
  $("form").submit(function(event) {
    var inputVar = parseInt($("input#inputVar").val());
      
    var calcedVar = calcFactorial(inputVar);

    $(".input").text(inputVar);
    $(".calced").text(calcedVar);

    $("#result").show();
    
    event.preventDefault();
  });
});