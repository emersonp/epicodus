describe("titleCase", function() {
  it("capitalizes the first letter of a word", function() {
    titleCase("cat").should.equal("Cat");
  });
    it("does not capitalize prepositions, articles, or conjunctions", function() {
        titleCase("and").should.equal("and");
    });
    
});

describe("titleCaseSentence", function() {
    it("does capitalize the first letter of each principal word", function() {
        titleCaseSentence("snow white").should.equal("Snow White");
    });
    it("only capitalizes the first letter of principal words, not non-principal", function() {
        titleCaseSentence("harold and maude").should.equal("Harold and Maude");
    });
    it("capitalizes the first letter of all first words", function() {
        titleCaseSentence("the count of monte cristo").should.equal("The Count of Monte Cristo");
    });
    it("only capitalizes the first letter of all principal words", function() {
        titleCaseSentence("FRANK AND BEANS").should.equal("Frank and Beans");
    });
});