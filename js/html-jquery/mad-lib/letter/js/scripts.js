$(document).ready(function() {
  $("#blanks form").submit(function(event) {
    var nameInput = $("input#name").val().toUpperCase();

    $(".name").text(nameInput);

    $("#letter").show();

    event.preventDefault();
  });
});