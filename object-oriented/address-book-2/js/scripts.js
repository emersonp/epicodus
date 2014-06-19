var Contact = {
  fullName: function() {
    return this.firstName + " " + this.lastName;
  }
};

$(document).ready(function() {
    $("form#new-contact").submit(function(event) {
        event.preventDefault();

        var inputtedFirstName = $("input#new-first-name").val();
        var inputtedLastName = $("input#new-last-name").val();
        var inputtedAddress = $("input#new-address").val();
        var newContact = Object.create(Contact);
        newContact.firstName = inputtedFirstName;
        newContact.lastName = inputtedLastName;
        newContact.address = inputtedAddress;

        $("ul#contacts").append("<li><span class='contact'>" + newContact.fullName() + "</span></li>");

        $(".contact").last().click(function() {
            $("#show-contact").show();
            $("#show-contact h2").text(newContact.fullName());
            $(".first-name").text(newContact.firstName);
            $(".last-name").text(newContact.lastName);
            $(".address").text(newContact.address);
            
            $("#edit-first-name").val(newContact.firstName);
            $("#edit-last-name").val(newContact.lastName);
            $("#edit-address").val(newContact.address);
            
            $("#show-contact button").click(function(event) {
                event.preventDefault();
                $("#show-contact").hide();
                $("#edit-contact-div").show();
            });
            
            $("#edit-contact-form").submit(function(event) {
                event.preventDefault();
                
                var editedFirstName = $("input#edit-first-name").val();
                var editedLastName = $("input#edit-last-name").val();
                var editedAddress = $("input#edit-address").val();
                newContact.firstName = editedFirstName;
                newContact.lastName = editedLastName;
                newContact.address = editedAddress;
                
                $("#show-contact").show();
                $("#show-contact h2").text(newContact.fullName());
                $(".first-name").text(newContact.firstName);
                $(".last-name").text(newContact.lastName);
                $(".address").text(newContact.address);
                $("#edit-contact-div").hide();
            });
        });
        this.reset();
    });
});