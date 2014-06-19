var buttonPress = function(id, message1, message2) {
    $("button#" + id).click(function() {
        $("ul#user").prepend("<li>" + message1 + " <span class='clickable delete'>x</span></li>");
        $("ul#webpage").prepend("<li>" + message2 + " <span class='clickable delete'>x</span></li>");
        $("#user .delete").click(function() {
            $("ul#user").children("li").first().remove();
        });
        $("#webpage .delete").click(function() {
            $("ul#webpage").children("li").first().remove();
        });
    });
};

$(document).ready(function() {
    
    
    buttonPress("hello", "Hello!", "Why hello there!");
    buttonPress("goodbye", "Goodbye!", "Goodbye, dear user!");
    buttonPress("stop", "Stop copying me!", "Pardon me, I meant no offense.");
});