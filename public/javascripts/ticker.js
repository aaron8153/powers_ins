jQuery.fn.tickerInfFade = function(current, next) {
	setTimeout(function() {
		current.fadeOut(1500, function(){
			next.fadeIn(1500, function(){
				c = next;
				n = next.next();
				if(n.length == 0){
					n = jQuery('.ticker a:first');
				}
				jQuery('.ticker').tickerInfFade(c, n);
			});
		});
	}, 6000);
};

jQuery(document).ready(function() {
	current = jQuery('.ticker a:visible');
	if(current.length == 0){
		current = jQuery('.ticker a:first');
	}
	next = current.next();
	if(next.length == 0){
		next = jQuery('.ticker a:first');
	}
	jQuery('.ticker').tickerInfFade(current, next);
});