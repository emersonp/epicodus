describe('sort anagram', function() {
  it("is true for any sorted word", function() {
    sortWord("cat").should.equal("act");
  });
    it("is true for any two sorted anagrams", function() {
        sortWord("cat").should.equal(sortWord("act"));
    });
});

describe('anagram', function() {
    it("is true if one word is a complete anagram of the other", function() {
        nagaram("path", "hatp").should.equal(true);
    });
    it("is true if one word is contained in another", function() {
        nagaram("path", "hat").should.equal(true);
    });
    it("is false if one word contains the other", function() {
        nagaram("hat", "path").should.equal(false);
    });
});