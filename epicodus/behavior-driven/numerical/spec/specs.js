beforeEach(function() {
    wordNumber = "";
    wordHundredNumber = "";
    wordThousandNumber = "";
    passNumberStr = "";
    passNumber = 0;
    passHunNumberStr = "";
    passHunNumber = 0;
});

describe('twoDigitNumerical', function() {
    it("is true for 1 to equal 'one'", function() {
        twoDigitNumerical(1).should.equal("one");
    });
    it("is true for 8 to equal 'eight'", function() {
        twoDigitNumerical(8).should.equal("eight");
    });
    it("is true for 20 to equal 'twenty'", function() {
        twoDigitNumerical(20).should.equal("twenty");
    });
    it("is true for 22 to equal 'twenty-two'", function() {
        twoDigitNumerical(22).should.equal("twenty-two");
    });
    it("is true for 32 to equal 'thirty-two'", function() {
        twoDigitNumerical(32).should.equal("thirty-two");
    });
    it("is true for 17 to equal 'seventeen'", function() {
        twoDigitNumerical(17).should.equal("seventeen");
    });
    it("is true for 100 to equal 'one hundred'", function() {
        threeDigitNumerical(100).should.equal("one hundred");
    });
    it("is true for 110 to equal 'one hundred and ten'", function() {
        threeDigitNumerical(110).should.equal("one hundred and ten");
    });
    it("is true for 121 to equal 'one hundred and twenty-one'", function() {
        threeDigitNumerical(121).should.equal("one hundred and twenty-one");
    });
    it("is true for 987 to equal 'nine hundred and eighty-seven'", function() {
        threeDigitNumerical(987).should.equal("nine hundred and eighty-seven");
    });
    it("is true for 1987 to equal 'one thousand nine hundred and eighty-seven'", function() {
        fourDigitNumerical(1987).should.equal("one thousand nine hundred and eighty-seven");
    });
});