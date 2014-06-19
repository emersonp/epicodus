describe('pig latin', function() {
    describe('basics', function() {
        it("is true if a word starting with a vowel adds -ay to the end", function() {
            pigLatinWord("egg").should.equal("eggay");
        });
        it("is true if a word starting with one consonant moves that consonant to the end and adds -ay to the end", function() {
            pigLatinWord("cat").should.equal("atcay");
        });
        it("is true if a word starting with two consonants moves both to the end and adds -ay", function() {
            pigLatinWord("stair").should.equal("airstay");
        });
        it("is true if a word starting with three consonants moves all three to the end and adds -ay", function() {
            pigLatinWord("three").should.equal("eethray");
        });
    });
    describe('the letter q', function() {
        it("is true if a word starting with qu- moves all the qu to the end and adds -ay", function() {
            pigLatinWord("queen").should.equal("eenquay");
        });
        it("is true if a word starting with a vowel and a -qu- moves all three to the end and adds -ay", function() {
            pigLatinWord("square").should.equal("aresquay");
        });
        it("is true if a word starting with a vowel and then -qu- does not move the -qu- to the end", function() {
            pigLatinWord("aqua").should.equal("aquaay");
        });
    });
    describe('sentences', function() {
        it("is true if each word in a sentence is piglatined", function() {
            pigLatinSentence("king candy").should.equal("ingkay andycay");
        });
    });
});







