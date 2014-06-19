describe('queenAttack', function() {
  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other', function() {
    queenAttack([1, 1], [2, 3]).should.equal(false);
  });
    it('is true if the coordinates are either horizontally, vertically, or diagonally in line with each other', function() {
        queenAttack([1, 1], [5, 5]).should.equal(true);
    });
});

describe('horizontalAttack', function() {
    it('is false if the coordinates are not horizontally in line with each other', function() {
        horizontalAttack([1, 1], [2, 2]).should.equal(false);
    });
    it('is true if the coordinates are horizontally in line with each other', function() {
        horizontalAttack([1, 1], [1, 3]).should.equal(true);
    });
});

describe('verticalAttack', function() {
    it('is false if the coordinates are not horizontally in line with each other', function() {
        verticalAttack([1, 1], [2, 2]).should.equal(false);
    });
    it('is true if the coordinates are horizonatally in line with each other', function() {
        verticalAttack([1, 1], [3, 1]).should.equal(true);
    });
});

describe('diagonalAttack', function() {
    it('is false if the coordinates are not diagonally in line with each other', function() {
        diagonalAttack([1, 1], [2, 3]).should.equal(false);
    });
    it('is true if the coordinates are diagonally in line with each other', function() {
        diagonalAttack([3, 3], [1, 1]).should.equal(true);
    });
});