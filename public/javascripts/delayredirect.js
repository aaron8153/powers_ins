jQuery.fn.countdownredir = function(counter, num_seconds, redir) {
	if(num_seconds >= 0){
		window.setTimeout(function() {
			counter.html(String(num_seconds));
			counter.countdownredir(counter, num_seconds - 1, redir);
		}, 1000);
	}
	else
	{
		window.location.href = redir;
	}
};

jQuery(document).ready(function() {
	redir = jQuery('.form p.countdown a').attr('href');
	counter = jQuery('.form p.countdown').find('span');
	jQuery('.form p.countdown span').countdownredir(counter, 15, redir);
});