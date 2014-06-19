$(document).ready(function() {
  $("button#turtles").click(function() {
    $(".info").hide();
    $("#turtle-info").show();
  });

  $("button#lizards").click(function() {
    $(".info").hide();
    $("#lizard-info").show();
  });

  $("button#snakes").click(function() {
    $(".info").hide();
    $("#snake-info").show();
  });
});