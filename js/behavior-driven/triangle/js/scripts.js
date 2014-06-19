var isTriangle = function(side1, side2, side3) {
    if ( side1 > 0 && side2 > 0 && side3 > 0 ) {
        return true;
    } else {
        return false;
    }
};

var isIso = function(side1, side2, side3) {
    if ( side1 === side2 || side2 === side3 || side1 === side3 ) {
        return true;
    } else {
        return false;
    }
};

var isEquil = function(side1, side2, side3) {
    if ( side1 === side2 && side2 === side3 ) {
        return true;
    } else {
        return false;
    }
};

$(document).ready(function() {
    $("form").submit(function(event) {
        var side1 = parseInt($("input#side1").val());
        var side2 = parseInt($("input#side2").val());
        var side3 = parseInt($("input#side3").val());

    if ( !isTriangle(side1, side2, side3) ) {
      $(".not").text("not a");
    } else if ( isEquil(side1, side2, side3) ) {
        $(".not").text("an equilateral");
    } else if ( isIso(side1, side2, side3) ) {
        $(".not").text("an isosceles");
    } else {
        $(".not").text("a scalene");
    }

    $("#result").show();
    
      event.preventDefault();
  });
});
