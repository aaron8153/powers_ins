FB.Event.subscribe('edge.create', function(response) {
    console.log(parseInt(jQuery('.like').css('margin-top')) + 3);
    jQuery('.like').css('margin-top', parseInt(jQuery('.like').css('margin-top')) + 7);
});