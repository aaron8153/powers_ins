jQuery('.company-admin .company-actions .company-view .admintoggle').click(function() {
	toggle_id = jQuery(this).attr('id');
	jQuery('.company-id-' + toggle_id).fadeToggle("fast", "linear");
	if(jQuery('.company-admin-' + toggle_id).hasClass('small')) {
		jQuery('.company-admin-' + toggle_id).animate({
			height: '250px'
		}, 1000, function() {
			jQuery('.company-admin-' + toggle_id).toggleClass('small').toggleClass('tall');
		});
	}
	else
	{
		jQuery('.company-admin-' + toggle_id).animate({
			height: '30px'
		}, 1000, function() {
			jQuery('.company-admin-' + toggle_id).toggleClass('small').toggleClass('tall');
		});
	}
});

jQuery('.toggle-showing').click(function() {
	hidden = jQuery.merge(jQuery('.companies .business:hidden'),jQuery('.companies .homeauto:hidden'));
	visible = jQuery.merge(jQuery('.companies .business:visible'),jQuery('.companies .homeauto:visible'));
	visible.fadeToggle(1250, "linear");
	hidden.delay(1300).fadeToggle(1250, "linear");	
		
});