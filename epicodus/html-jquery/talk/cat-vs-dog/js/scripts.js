$(document).ready(function() {
  $("button#cat").click(function() {
      $("ul#pet").prepend("<li>Meow!</li>");
      $("ul#neighbor").prepend("<li>Woof, woof yourself, motherfucker.</li>");
  });

  $("button#dog").click(function() {
    $("ul#pet").prepend("<li>Woof woof!</li>");
    $("ul#neighbor").prepend("<li>Pardon me. Go meow yourself.</li>");
  });
});