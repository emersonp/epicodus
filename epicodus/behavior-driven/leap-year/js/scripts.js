var leapYear = function(year) {
  if ( divisibleBy400() || ( divisibleByFour(year) && !divisibleBy100(year) ) ) {
    return true;
  } else {
    return false;
  }
};

var divisibleByFour = function(year) {
    if ( year % 4 === 0 ) {
        return true;
    } else {
        return false;
    }
}

var divisibleBy100 = function(year) {
    if ( year % 100 === 0 ) {
        return true;
    } else {
        return false;
    }
}

var divisibleBy400 = function(year) {
    if ( year % 400 === 0 ) {
        return true;
    } else {
        return false;
    }
}

$(document).ready(function() {
  $("form#leap-year").submit(function(event) {
    var year = parseInt($("input#year").val());
    var result = leapYear(year);

    $(".year").text(year);
    if (!result) {
      $(".not").text("not");
    } else {
        $(".not").text("");
    }

    $("#result").show();
    event.preventDefault();
  });
});