$(document).ready(function(){
	var owl = $('.owl-carousel');
		owl.owlCarousel({
			autoWidth: true,
			items: 2,
			dots: false
		});
	$('.owl-next').click(function() {
		owl.trigger('next.owl.carousel');
	});
	$('.owl-prev').click(function() {
    	owl.trigger('prev.owl.carousel', [300]);
	});
});

