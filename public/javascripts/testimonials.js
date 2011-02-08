jQuery.fn.testimonialInfFade = function(current, next) {
	setTimeout(function() {
		current.fadeOut(1500, function(){
			next.fadeIn(1500, function(){
				c = next;
				n = next.next();
				if(n.length == 0){
					n = jQuery('.testimonials .testimonial:first');
				}
				jQuery('.floater.testi').testimonialInfFade(c, n);
			});
		})
	}, 6000);
};

jQuery(document).ready(function() {
	current = jQuery('.testimonials .testimonial:visible');
	next = current.next();
	if(next.length == 0){
		next = jQuery('.testimonials .testimonial:first');
	}
	jQuery('.floater.testi').testimonialInfFade(current, next);
});