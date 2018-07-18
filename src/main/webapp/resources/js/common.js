$(document).ready(function(){

	// ==================// SCRIPT FOR STICKY-EVENT-GROUP ANIMATION. PAGE "index.html" //================== //

	let $back_to_top = $('.sticky-logo');
	let scroll_top_duration = 250;
	$back_to_top.on('click', function(event){
		event.preventDefault();
		$('body,html').animate({
			scrollTop: 0 ,
		 	}, scroll_top_duration
		);
	});

	// ==================// SCRIPT FOR STICKY-EVENT-GROUP. PAGE "index.html" //================== //

	$(".block-event-group").sticky({topSpacing:0, wrapperClassName: "sticky-event-group"});

	// ==================// SCRIPT FOR CALENDAR. PAGE "index.html" //================== //

	let fridayCalendarPicker = $(".calendarpicker").calendarPicker({
		monthNames:["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"],
		dayNames: ["Вс", "Пн", "Вт", "Ср", "Чт", "Пт", "Сб"],
		years:0,
		months:0,
		days:8
	});

	// ==================// SCRIPT FOR "IMAGE-BOX". PAGE "index-add-event.html" //================== //

	$.uploadPreview({
		input_field: ".upload-img-input",
		preview_box: ".image-box",
		label_field: '.add-image-label',
		label_default: ".after-upload-label",
		no_label: false
	});

	// ==================// SCRIPT FOR POPUP-CALENDAR. PAGE "index-add-event.html" //================== //


	$(".toggle-datepicker-date").flatpickr({
		minDate: "today",
        locale: {
            firstDayOfWeek: 1,
            weekdays: {
                shorthand: ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'],
                longhand: ['Воскресенье', 'Понедельник', 'Вторник', 'Среда', 'Четверг', 'Пятница', 'Суббота'],
            },
            months: {
                shorthand: ['Янв', 'Фев', 'Март', 'Апр', 'Май', 'Июнь', 'Июль', 'Авг', 'Сен', 'Окт', 'Ноя', 'Дек'],
                longhand: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
            },
        }
	});
	$(".toggle-datepicker-time").flatpickr({
		enableTime: true,
		noCalendar: true,
		dateFormat: "H:i",
		time_24hr: true
	});

	// ==================// SCRIPT FOR CHAT SCROLL. PAGE "index-add-event.html" //================== //

    $(".chat-content, #input-message").niceScroll({
        cursorcolor: "#141414",
        cursorwidth: "7px",
        horizrailenabled: false,
        zindex: 1,
        cursorborderradius: "2px"
    });

    // ==================// SCRIPT FOR CHAT TEXTAREA. PAGE "index-event-page.html" //================== //

    $('#input-message').textareaAutoSize();


	//Empty for jquery scripts .........................

});

	// ==================// PURE JS SCRIPTS //================== //

	// ==================// SCRIPT FOR MODAL WINDOW. PAGE "index.html" //================== //

	// Global variables
	
	
	// Execute the modal main function
	function showModalContent(activeBtn, activeContent, closeBtn){
		// Variables
		const activeOverlay = document.querySelector('.overlay-darken');
		closeBtn = document.querySelector(closeBtn);
		activeBtn = document.querySelector(activeBtn);
		activeContent = document.querySelector(activeContent);
		// Load event listeners
		document.addEventListener('click', getOverlayClick);
		closeBtn.addEventListener('click', closeModal);
		// Load darken overlay
		getOverlayEffect(activeContent);
		function getOverlayEffect(activeContent){
			activeOverlay.style.visibility = 'visible';
			document.body.style.overflow = 'hidden';
			activeContent.style.display = 'block';
			document.querySelector('.overlay-dialog').classList.add('modal-ani');
		}
		function getOverlayClick(e){
			if (e.target === activeOverlay && activeOverlay.contains(e.target)) {
				document.body.style.overflow = 'auto';
				activeOverlay.style.visibility = 'hidden';
				activeContent.style.display = 'none';
				document.querySelector('.overlay-dialog').classList.remove('modal-ani');
			}
		}
		function closeModal(){
			document.body.style.overflow = 'auto';
			activeOverlay.style.visibility = 'hidden';
			activeContent.style.display = 'none';
			document.querySelector('.overlay-dialog').classList.remove('modal-ani');
		}
	}

	// ==================// SCRIPT FOR MENU DROPDOWN. PAGE "index-user-profile.html" //================== //

	function showContent(activeMenuBtn, activeMenuContent){
		// Variables
		activeMenuBtn = document.querySelector(activeMenuBtn),
		activeMenuContent = document.querySelector(activeMenuContent);
		  
		// Load Listeners 
		getContentBlock();
		loadEventListeners();
		function loadEventListeners(){
			document.addEventListener('click', outsideUserClick);
		}
		
		// Functions
		function getContentBlock(){
			if(activeMenuContent.classList.contains('show-mnu')){
				activeMenuBtn.classList.contains('notification-bell-nav') === true ? getBellColorGray() : '';
				activeMenuBtn.classList.remove('btn-active');
				activeMenuContent.classList.remove('show-mnu');
			}else{
				activeMenuBtn.classList.contains('notification-bell-nav') === true ? getBellColorWhite() : '';
				activeMenuContent.classList.add('show-mnu');
				activeMenuBtn.classList.add('btn-active');
			}
		}
        function getBellColorGray(){
            const bellWrapper = document.querySelector('.notification-btn');
            bellWrapper.style = "opacity: 0.5";
        }
        function getBellColorWhite(){
            const bellWrapper = document.querySelector('.notification-btn');
            bellWrapper.style = "opacity: 1";
        }
		function outsideUserClick(e){
			if (e.target !== activeMenuBtn && !activeMenuBtn.contains(e.target)) {
				activeMenuBtn.classList.contains('notification-bell-nav') === true ? getBellColorGray() : '';
				activeMenuContent.classList.remove('show-mnu');
				activeMenuBtn.classList.remove('btn-active');
			}
		}
	}

	// ==================// SCRIPT FOR TAB SETTINGS. PAGE "index-account-settings.html" //================== //

	function openSetting(evt, stg) {
		let i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tab-content");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tab-link");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className.replace("active-tab-link", "");
		}
		document.querySelector(stg).style.display = "block";
		evt.classList.add('active-tab-link');
	}

	// ==================// SCRIPT FOR OPTION ITEMS. PAGE "index-event-page.html" //================== //

	function showOptionContent(optionBtn, optionContent, lastContent){
		optionBtn = document.querySelector(optionBtn);
        optionContent = document.querySelector(optionContent);
		lastContent = document.querySelector(lastContent);
		if(optionContent.classList.contains('active-complain-content')){
            optionContent.classList.remove('active-complain-content');
			lastContent.style.display = 'block';
		}else{
            optionContent.classList.add('active-complain-content');
			lastContent.style.display = 'none';
		}
	}

	// ==================// END //================== // 