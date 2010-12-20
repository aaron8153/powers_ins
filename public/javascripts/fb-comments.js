jQuery('.viewcomments').click(function() {	
	jQuery('.comments .fb_iframe_widget').toggle('fast', function(){
		jQuery('.floater').stickyfloat({
			duration: 200
		});
	});
});