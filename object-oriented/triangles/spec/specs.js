describe("Triangles", function() {
    describe("invalid", function() {
        it("returns true if any of three sides is not greater than zero", function() {
            var testTriangle = Object.create(Triangle);
            testTriangle.side1 = 0;
            testTriangle.side2 = 3;
            testTriangle.side3 = 3;
            testTriangle.invalid().should.equal(true);
        });
    });
    describe("type", function() {
        it("returns 'equilateral' if all three sides are equal", function() {
            var testTriangle = Object.create(Triangle);
            testTriangle.side1 = 3;
            testTriangle.side2 = 3;
            testTriangle.side3 = 3;
            testTriangle.type().should.equal("equilateral");
        });
        it("returns 'isosceles' if two sides are equal", function() {
            var testTriangle = Object.create(Triangle);
            testTriangle.side1 = 3;
            testTriangle.side2 = 2;
            testTriangle.side3 = 3;
            testTriangle.type().should.equal("isosceles");
        });
        it("returns 'scalene' if no two sides are equal", function() {
            var testTriangle = Object.create(Triangle);
            testTriangle.side1 = 1;
            testTriangle.side2 = 2;
            testTriangle.side3 = 3;
            testTriangle.type().should.equal("scalene");
        });
    });
});