var queenAttack = function(xCor, yCor) {
    if ( horizontalAttack(xCor, yCor) || verticalAttack(xCor, yCor) || diagonalAttack(xCor, yCor) ) {
        return true;
    } else {
        return false;
    }
};

var horizontalAttack = function(xCor, yCor) {
    if ( xCor[0] === yCor[0] ) {
        return true;
    } else {
        return false;
    }
};

var verticalAttack = function(xCor, yCor) {
    if ( xCor[1] === yCor[1] ) {
        return true;
    } else {
        return false;
    }
};

var diagonalAttack = function(xCor, yCor) {
    if ( xCor[0] - xCor[1] === yCor[0] - yCor[1] ) {
        return true;
    } else {
        return false;
    }
};

$(document).ready(function() {
  $("form").submit(function(event) {
    var xInput1 = parseInt($("input#xCor1").val());
      var xInput2 = parseInt($("input#xCor2").val());
      var yInput1 = parseInt($("input#yCor1").val());
      var yInput2 = parseInt($("input#yCor2").val());
      var origin = [xInput1, yInput1];
      var destination = [xInput2, yInput2];
    var result = queenAttack(origin, destination);

    if (!result) {
      $(".not").text("not");
    } else {
        $(".not").text("");
    }

    $("#result").show();
    
      event.preventDefault();
  });
});