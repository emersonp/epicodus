$(document).ready(function() {
  $("button#day").click(function() {
    $("body").removeClass();
    $("body").addClass("day-background");
      $("h1, h2, p").removeClass();
      $("h1, h2, p").addClass("day-text");
  });

  $("button#night").click(function() {
    $("body").removeClass();
    $("body").addClass("night-background");
      $("h1, h2, p").removeClass();
      $("h1, h2, p").addClass("night-text");
  });

});