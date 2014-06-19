var Triangle = {
    invalid: function() {
        return (this.side1 <= 0 || this.side2 <= 0 || this.side3 <= 0);
    },
    
    type: function() {
        if ( this.side1 === this.side2 && this.side1 === this.side3 ) {
            return "equilateral";
        } else if ( this.side1 === this.side2 || this.side1 === this.side3 || this.side3 === this.side2 ) {
            return "isosceles";
        } else {
            return "scalene";
        }
    },
    
    stringTriangle: function() {
        return this.side1 + ", " + this.side2 + ", " + this.side3;
    }
};

$(document).ready(function() {
    $("form#new-triangle").submit(function(event) {
        event.preventDefault();

        var inputtedSide1 = parseInt($("input#new-side1").val());
        var inputtedSide2 = parseInt($("input#new-side2").val());
        var inputtedSide3 = parseInt($("input#new-side3").val());
        var newTriangle = Object.create(Triangle);
        newTriangle.side1 = inputtedSide1;
        newTriangle.side2 = inputtedSide2;
        newTriangle.side3 = inputtedSide3;
        
        
        if( newTriangle.type() === "scalene" ) {
            $("ul#scalene-list").append("<li>" + newTriangle.stringTriangle() + "</li>");
        } 
        else if ( newTriangle.type() === "equilateral" ) {
            $("ul#equilateral-list").append("<li>" + newTriangle.stringTriangle() + "</li>");
        } else if ( newTriangle.type() === "isosceles") {
            $("ul#isosceles-list").append("<li>" + newTriangle.stringTriangle() + "</li>");
        }
        
        //$("ul#scalene-list").append("<li>" + newTriangle.stringTriangle() + "</li>");
        
        this.reset();
    });
});