describe("Contact", function() {
  describe("fullName", function() {
    it("combines the first and last name, separated by a space", function() {
      var testContact = Object.create(Contact);
      testContact.firstName = "Dolly";
      testContact.lastName = "Parton";
      testContact.fullName().should.equal("Dolly Parton");
    });
  });
});
describe("Addresses", function() {
    describe("fullAddress", function() {
        it("combines the street, city, and state, separated by a comma and then a space", function() {
            var testAddress = Object.create(Address);
            testAddress.street = "111 Main St.";
            testAddress.city = "Portland";
            testAddress.state = "OR";
            testAddress.fullAddress().should.equal("111 Main St., Portland OR");
        });
    });
});