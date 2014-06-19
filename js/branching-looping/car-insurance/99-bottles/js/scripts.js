$(document).ready(function() {
    $(".btn").click(function(event) {
        for ( var index = 99; index >= 0; index -= 1) {
            $(".bottles").append("<p>" + index + " bottles of beer on the wall. Take one down, pass it around, " + ( index - 1) + " bottles of beer on the wall.</p>");
        }
    });
});