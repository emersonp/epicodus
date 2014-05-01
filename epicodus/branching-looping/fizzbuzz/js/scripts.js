$(document).ready(function() {
  $("form").submit(function(event) {
    var maxFizz = $("input#number").val();
      for ( var index = 1 ; index <= maxFizz; index++ ) {
          if ( index % 15 === 0 ) {
              $(".fizzing").append("<p>FizzBuzz</p>");
          } else if ( index % 3 === 0 ) {
              $(".fizzing").append("<p>Fizz</p>");
          } else if ( index % 5 === 0 ) {
              $(".fizzing").append("<p>Buzz</p>");
          } else {
              $(".fizzing").append("<p>" + index + "</p>");
          }
      }
      
    event.preventDefault();
  });
});