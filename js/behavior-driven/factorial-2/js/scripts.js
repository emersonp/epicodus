var calcFactorial = function( variable, currentTotal ) {
    var factorialTotal = currentTotal;
    if ( variable > 1 ) {
        factorialTotal *= variable - 1;
        factorialTotal = calcFactorial( (variable - 1), factorialTotal );
    }
    
    return factorialTotal;
}

$(document).ready(function() {
  $("form").submit(function(event) {
    var inputVar = parseInt($("input#inputVar").val());
      
    var calcedVar = calcFactorial(inputVar, inputVar);

    $(".input").text(inputVar);
    $(".calced").text(calcedVar);

    $("#result").show();
    
    event.preventDefault();
  });
});