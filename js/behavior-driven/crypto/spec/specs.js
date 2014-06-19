describe("Crypto Square", function() {
    it("is true if text is converted into an array", function() {
        toArray("cat").should.eql(["c","a","t"]);
    });
    it("is true if spaces and punctuation are removed", function() {
        toArray("cat dog.").should.eql(["c","a","t","d","o","g"]);
    });
    it("is true if it can reorganize an array according to the cryptosquare", function() {
        cryptoSquare("jumpshark").should.eql(["j","p","a","u","s","r","m","h","k"]);
    });
    it("is true if it can join an array", function() {
        fromArray(["s","h","a","r","k"]).should.equal("shark");
    });
    it("is true if it can join an array and add spaces every five characters", function() {
        fromArray(["s","h","a","r","k","j","u","m","p","s","o","v","e","r","t","h","e","c","a","t"]).should.equal("shark jumps overt hecat");
    });
});

describe("Grid", function() {
    it("is true if it returns a root of a number larger than submitted", function() {
        findSquare(21,1).should.equal(5);
    });
});