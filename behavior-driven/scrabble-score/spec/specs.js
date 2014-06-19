describe('scrabble score', function() {
    it("is true if the letter a is worth one point", function() {
      letterPoint("a").should.equal(1);
    });
    it("is true if the letter z is worth ten points", function() {
        letterPoint("z").should.equal(10);
    });
    it("is true if the letter A is worth one point", function() {
        letterPoint("A").should.equal(1);
    });
    it("is true if the word cat is worth five points", function() {
        wordPoint("cat").should.equal(5);
    });
});