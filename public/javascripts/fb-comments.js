jQuery('.viewcomments').click(function() {
	jQuery('.viewcomments span').toggle();
	jQuery('.about-box-separator').toggle();
	jQuery('.comments .fb_iframe_widget').toggle('fast', function(){
		jQuery('.floater').stickyfloat({
			duration: 200
		});
	});
});