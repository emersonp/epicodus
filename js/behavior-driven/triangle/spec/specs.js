describe('Is a Triangle', function() {
  it('is true if all three sides are greater than 0', function() {
    isTriangle(0, 2, 2).should.equal(false);
  });
});

describe('Is Isosceles', function() {
    it('is false if no two sides are the same length', function() {
        isIso(1, 2, 3).should.equal(false);
    });
    it('is true if any two sides are the same length', function() {
        isIso(2, 4, 4).should.equal(true);
    });
});

describe('Is Equilateral', function() {
    it('is false if any side is different in length from another', function() {
        isEquil(2, 4, 4).should.equal(false);
    });
    it('is true if all three sides are the same length', function() {
        isEquil(5, 5, 5).should.equal(true);
    });
});