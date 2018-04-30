$(document).ready(function(){

    // Script for calendar

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
        $complainBtn = $('.reason-btn'),
        $reasonBlk = $('.complain-content'),
        $eventPage = $('.event-content'),
        menu = {
            mnuactv: function(activemnu, bgformnu){
                activemnu.addClass('toggle-mnu');
                bgformnu.addClass('bg');
            },
            hidemnu: function(hidemnu, hidebgmnu){
                hidemnu.removeClass('toggle-mnu');
                hidebgmnu.removeClass('bg');
            },
            complaincontentactive: function(reasonslist){
                reasonslist.addClass('active-complain-content');
                $eventPage.addClass('hide-event-content');
            }
        }
    function activateMnu(actv, tgl){
        $('html').on('click', function() {
            menu.hidemnu(tgl, actv);
        });
        actv.on('click', function(e) {
            e.stopPropagation();
            if (tgl.hasClass('toggle-mnu') == false) {
                menu.mnuactv(tgl, actv);
            }else menu.hidemnu(tgl, actv);
        });
    }
    function activeReasonList(reasonbutton, reasonblock){
        reasonbutton.on('click', function(e) {
            e.preventDefault();
            menu.complaincontentactive(reasonblock);
        });
    }
    activateMnu($mnuToggle, $mnuTop);
    activateMnu($mnuOptionsBtn, $mnuOptions);
    activateMnu($mnuShareBtn, $mnuShare);
    activeReasonList($complainBtn, $reasonBlk);



    // Script for "image-box". Page "index-add-event.html".

    $.uploadPreview({
        input_field: ".upload-img-input",
        preview_box: ".image-box",
        label_field: '.add-image-label',
        label_default: ".after-upload-label",
        no_label: false
    });
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


    //Empty for jquery scripts .........................



});

// Script for index-account-settings

function openSetting(evt, stg) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace("active-setting-link", "");
    }
    document.getElementById(stg).style.display = "block";
    $(evt).addClass('active-setting-link');
}