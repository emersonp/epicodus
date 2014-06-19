$(document).ready(function() {
  $("form#insurance").submit(function(event) {
    var age = parseInt($("input#age").val());
    var gender = $("select#gender").val();

    var quote = (100 - age) * 3;
      if (gender === 'male' && age < 26) {
      quote += 50;
    }

    $("#rate").empty().append(quote);
    $("#quote").show();

    event.preventDefault();
  });
});