$(document).ready(function(){
	
	var fridayCalendarPicker = $(".calendarpicker").calendarPicker({
		monthNames:["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"],
		dayNames: ["Вс", "Пн", "Вт", "Ср", "Чт", "Пт", "Сб"],
		//callbackDelay:500,
		years:0,
		months:0,
		days:8,
		callback:function(cal) {
			$("#wtf").html("Selected date: " + cal.currentDate);
		}});

	// Script for modal window. Page "index.html".

	var $regLink = $('.reg-link'),
	$authLink = $('.auth-link'),
	$overlayToggle = $('.overlay-darken'),
	$overlayDialogReg = $('.overlay-lighten-dialog-reg'),
	$overlayDialogAuth = $('.overlay-lighten-dialog-auth'),
	$overlayCloseBtn = $('.close-modal'),
	$overlayDarkenLogo = $('.overlay-darken-logo');
	Modal = {
		show: function(event){
			event.addClass('show-bg');
			$(document.body).css('overflow', 'hidden');
		},
		hide: function(hidemodal){
			hidemodal.removeClass('show-bg');
			$(document.body).css('overflow', 'auto');
		},
		form: function(panel){
			panel.addClass('show-panel');
			$overlayDarkenLogo.addClass('show-panel');
		},
		hideform: function(hidePanel){
			hidePanel.removeClass('show-panel');
			$overlayDarkenLogo.removeClass('show-panel');
		}
	}
	function OnClick(clicked, forms){
		clicked.on('click', function() {
			Modal.show($overlayToggle);
			Modal.form(forms);
			$overlayCloseBtn.on('click', function(){
				Modal.hide($overlayToggle);
				Modal.hideform(forms);
			});
		});
	}
	function hideOnClinkDarkenOverlay(overlaydarken){
		overlaydarken.on('click', function() {
			Modal.hide($overlayToggle);
			Modal.hideform($overlayDialogReg);
			Modal.hideform($overlayDialogAuth);
		});
	} 
	OnClick($regLink, $overlayDialogReg);
	OnClick($authLink, $overlayDialogAuth);
	hideOnClinkDarkenOverlay($overlayToggle);

	// Script for event-page.

	var	$mnuToggle = $('.user-profile-wrapper'),
	$mnuTop = $('.top-menu-list'),
	$mnuOptionsBtn = $('.event-more-options-icon'),
	$mnuOptions = $('.event-option-menu'),
	$mnuShareBtn = $('.event-share'),
	$mnuShare = $('.event-share-toggle'),
	Menu = {
		mnuactv: function(activemnu, bgformnu){
			activemnu.addClass('toggle-mnu');
			bgformnu.addClass('bg');
		},
		hidemnu: function(hidemnu, hidebgmnu){
			hidemnu.removeClass('toggle-mnu');
			hidebgmnu.removeClass('bg');
		}
	}
	function activateMnu(actv, tgl){
		$('html').on('click', function() {
			Menu.hidemnu(tgl, actv);
		});
		actv.on('click', function(e) {
			e.stopPropagation();
			if (tgl.hasClass('toggle-mnu') == false) {
				Menu.mnuactv(tgl, actv);
			}else Menu.hidemnu(tgl, actv);
		});
	}
	activateMnu($mnuToggle, $mnuTop);
	activateMnu($mnuOptionsBtn, $mnuOptions);
	activateMnu($mnuShareBtn, $mnuShare);

	// Script for "image-box". Page "index-add-event.html".

	$('.image-box').html5imageupload();
	
	// var $fileError = $(".error");
	// var error = {
	// 	file: function(alerterror){
	// 		alerterror.addClass('show-error');
	// 	}
	// }
	// $("#fileUpload").on('change', function() {
 //          //Get count of selected files
 //          var countFiles = $(this)[0].files.length;
 //          var imgPath = $(this)[0].value;
 //          var extn = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();
 //          var image_holder = $("#image-holder");
 //          image_holder.empty();
 //          if (extn == "gif" || extn == "png" || extn == "jpg" || extn == "jpeg") {
 //          	if (typeof(FileReader) != "undefined") {
 //              //loop for each file selected for uploaded.
 //              for (var i = 0; i < countFiles; i++) 
 //              {
 //              	var reader = new FileReader();
 //              	reader.onload = function(e) {
 //              		$("<img />", {
 //              			"src": e.target.result,
 //              			"class": "event-picture-preview",
 //              			"alt": "event-picture"
 //              		}).css('display', 'block').appendTo(image_holder);
 //              	}
 //              	image_holder.show();
 //              	reader.readAsDataURL($(this)[0].files[i]);
 //              }
 //          } else {
 //          	alert('Update your browser');
 //          }
 //      } else {
 //      	error.file($fileError);
 //      	return 0;
 //      }
 //  });
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
	$(".chat-content").niceScroll({
		cursorcolor: "#141414",
		cursorwidth: "7px",
		horizrailenabled: false,
		zindex: 1,
		cursorborderradius: "2px"
	});
	$('.input-message').textareaAutoSize();
});