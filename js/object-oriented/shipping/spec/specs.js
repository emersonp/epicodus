describe('volume', function() {
    it("returns 1000 for a volume of 10 by 10 by 10", function() {
        var testPackage = Object.create(Package);
        testPackage.length = 10;
        testPackage.width = 10;
        testPackage.height = 10;
        testPackage.volume().should.equal(1000);
    });
});

describe('shipping cost', function() {
    it("returns 5 for a volume of 200", function() {
        var testPackage = Object.create(Package);
        testPackage.length = 2;
        testPackage.width = 10;
        testPackage.height = 10;
        testPackage.shipping().should.equal(5);
    });
    it("returns 10 for a volume of 200 and a weight of 3", function() {
        var testPackage = Object.create(Package);
        testPackage.length = 2;
        testPackage.width = 10;
        testPackage.height = 10;
        testPackage.weight = 3;
        testPackage.shipping().should.equal(10);
    });
    it("returns 10 for a volume of 200 and a weight of 3", function() {
        var testPackage = Object.create(Package);
        testPackage.length = 2;
        testPackage.width = 10;
        testPackage.height = 10;
        testPackage.weight = 3;
        testPackage.shipping().should.equal(10);
    });
});