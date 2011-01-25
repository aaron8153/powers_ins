jQuery('.page-1 .next-prev-buttons .next').click(function() {
	jQuery('.page-1').fadeToggle(1250, "linear");
	jQuery('.page-2').delay(1300).fadeToggle(1250, "linear");		
});

jQuery('.page-2 .next-prev-buttons .next').click(function() {
	jQuery('.page-2').fadeToggle(1250, "linear");
	jQuery('.page-3').delay(1300).fadeToggle(1250, "linear");		
});

jQuery('.page-3 .next-prev-buttons .next').click(function() {
	jQuery('.page-3').fadeToggle(1250, "linear");
	jQuery('.page-4').delay(1300).fadeToggle(1250, "linear");		
});

jQuery('.page-4 .next-prev-buttons .next').click(function() {
	jQuery('.page-4').fadeToggle(1250, "linear");
	jQuery('.page-5').delay(1300).fadeToggle(1250, "linear");		
});




jQuery('.page-2 .next-prev-buttons .prev').click(function() {
	jQuery('.page-2').fadeToggle(1250, "linear");
	jQuery('.page-1').delay(1300).fadeToggle(1250, "linear");		
});

jQuery('.page-3 .next-prev-buttons .prev').click(function() {
	jQuery('.page-3').fadeToggle(1250, "linear");
	jQuery('.page-2').delay(1300).fadeToggle(1250, "linear");		
});

jQuery('.page-4 .next-prev-buttons .prev').click(function() {
	jQuery('.page-4').fadeToggle(1250, "linear");
	jQuery('.page-3').delay(1300).fadeToggle(1250, "linear");		
});

jQuery('.page-5 .next-prev-buttons .prev').click(function() {
	jQuery('.page-5').fadeToggle(1250, "linear");
	jQuery('.page-4').delay(1300).fadeToggle(1250, "linear");		
});