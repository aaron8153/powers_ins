jQuery(function(){
	jQuery('.about-box-content').columnize({
		columns : 2,
		lastNeverTallest : true,
		doneFunc : function(){
						jQuery('.column .last').width(jQuery('.column .first').width() - jQuery('.column .first p').css("padding-right"));
					}
	});
});