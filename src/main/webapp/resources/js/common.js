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

	// Script for add event page

	$('.image-box').click(function(event) {
		var imgg = $(this).children('img');
		$(this).siblings().children("input").trigger('click');  

		$(this).siblings().children("input").change(function() {
			var reader = new FileReader();

			reader.onload = function (e) {
				var urll = e.target.result;
				$(imgg).attr('src', urll);
				imgg.parent().css('background','transparent');
				// imgg.hover(function() {
				// 	$(this).css("opacity","1")
				// });
				imgg.show();
				imgg.siblings('.block-center').hide();
			}
			reader.readAsDataURL(this.files[0]);
		}); 
	});
	$('.event-group').each(function(){
		var $this = $(this), numberOfOptions = $(this).children('option').length;

		$this.addClass('select-hidden'); 
		$this.wrap('<div class="select"></div>');
		$this.after('<div class="select-styled"></div>');

		var $styledSelect = $this.next('div.select-styled');
		$styledSelect.text($this.children('option').eq(0).text());

		var $list = $('<ul />', {
			'class': 'select-options'
		}).insertAfter($styledSelect);

		for (var i = 0; i < numberOfOptions; i++) {
			$('<li />', {
				text: $this.children('option').eq(i).text(),
				rel: $this.children('option').eq(i).val()
			}).appendTo($list);
		}

		var $listItems = $list.children('li');

		$styledSelect.click(function(e) {
			e.stopPropagation();
			$('div.select-styled.active').not(this).each(function(){
				$(this).removeClass('active').next('ul.select-options').hide();
			});
			$(this).toggleClass('active').next('ul.select-options').toggle();
		});

		$listItems.click(function(e) {
			e.stopPropagation();
			$styledSelect.text($(this).text()).removeClass('active');
			$this.val($(this).attr('rel'));
			$list.hide();
        // console.log($this.val());
    });

		$(document).click(function() {
			$styledSelect.removeClass('active');
			$list.hide();
		});
	});
	$(function () {
		$(".input-begining-date").flatpickr({
			minDate: "today",
    		maxDate: new Date().fp_incr(14) // 14 days from now
		});
		$(".input-begining-time").flatpickr({
		    enableTime: true,
		    noCalendar: true,
		    dateFormat: "H:i",
		    time_24hr: true
		});
	});
});

