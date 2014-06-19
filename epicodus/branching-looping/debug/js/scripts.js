$(document).ready(function() {
  $("#blanks form").submit(function() {
    var blanks = ["person1", "person2", "animal", "exclamation", "verb", "noun"];

    blanks.forEach(function(blank) {
      var userInput = $("input." + blank).val();
      $("." + blank).text(userInput).val();      
    });

    $("#story").show();
  });
});