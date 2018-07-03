jQuery.fn.calendarPicker = function(options) {
    // --------------------------  start default option values --------------------------
    if (!options.date) {
        options.date = new Date();
    }
    if (typeof(options.years) == "undefined")
        options.years=1;
    if (typeof(options.months) == "undefined")
        options.months=3;
    if (typeof(options.days) == "undefined")
        options.days=4;
    if (typeof(options.showDayArrows) == "undefined")
        options.showDayArrows=true;
    if (typeof(options.useWheel) == "undefined")
        options.useWheel=true;
    if (typeof(options.callbackDelay) == "undefined")
        options.callbackDelay=500;
    if (typeof(options.monthNames) == "undefined")
        options.monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    if (typeof(options.dayNames) == "undefined")
        options.dayNames = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
    // --------------------------  end default option values --------------------------
    var calendar = {currentDate: options.date};
    calendar.options = options;
    //build the calendar on the first element in the set of matched elements.
    var theDiv = this.eq(0);//$(this);
    theDiv.addClass("calendar");
    //empty the div
    theDiv.empty();
    var divLine = $("<div>").addClass("calline");
    var divMonths = $("<div>").addClass("calmonth");
    var divYears = $("<div>").addClass("calyear");
    var divDays = $("<div>").addClass("calday");
    theDiv.append(divLine.append(divMonths).append(divYears));
    theDiv.append(divDays);
    calendar.changeDate = function(date) {
        calendar.currentDate = date;
        var fillYears = function(date) {
            var year = date.getFullYear();
            var t = new Date();
            divYears.empty();
            var nc = options.years*2+1;
            for (var i = year - options.years; i <= year + options.years; i++) {
                var d = new Date(date);
                d.setFullYear(i);
                var span = $("<span>").addClass("main-element").attr("millis", d.getTime()).html(i);
                if (d.getYear() == t.getYear())
                    span.addClass("today");
                if (d.getYear() == calendar.currentDate.getYear())
                    span.addClass("year-selected");
                divYears.append(span);
            }
        }
        var fillMonths = function(date) {
            var month = date.getMonth();
            var t = new Date();
            divMonths.empty();
            var oldday = date.getDay();
            var nc = options.months*2+1;
            for (var i = -options.months; i <= options.months; i++) {
                var d = new Date(date);
                var oldday = d.getDate();
                d.setMonth(month + i);

                if (d.getDate() != oldday) {
                    d.setMonth(d.getMonth() - 1);
                    d.setDate(28);
                }
                var span = $("<span>").addClass("main-element").attr("millis", d.getTime()).html(options.monthNames[d.getMonth()]);
                if (d.getYear() == t.getYear() && d.getMonth() == t.getMonth())
                    span.addClass("today");
                if (d.getYear() == calendar.currentDate.getYear() && d.getMonth() == calendar.currentDate.getMonth())
                    span.addClass("mounth-selected");
                divMonths.append(span);
            }
        }
        var fillDays = function(date) {
            var day = date.getDate();
            var t = new Date();
            divDays.empty();
            var nc = options.days*2+1;
            for (var i = -options.days; i <= options.days; i++) {
                var d = new Date(date);
                d.setDate(day + i)
                var span = $("<span>").addClass("calelement").attr("millis", d.getTime())
                if (i == -options.days && options.showDayArrows) {
                    span.addClass("prev");
                } else if (i == options.days && options.showDayArrows) {
                    span.addClass("next");
                } else {
                    span.html("<span class=daynumber>" + d.getDate() + "</span><br>" + options.dayNames[d.getDay()]);
                    if (d.getYear() == t.getYear() && d.getMonth() == t.getMonth() && d.getDate() == t.getDate())
                        span.addClass("today");
                    if (d.getYear() == calendar.currentDate.getYear() && d.getMonth() == calendar.currentDate.getMonth() && d.getDate() == calendar.currentDate.getDate())
                        span.addClass("selected");
                }
                divDays.append(span);
            }
        }
        var deferredCallBack = function() {
            if (typeof(options.callback) == "function") {
                if (calendar.timer)
                    clearTimeout(calendar.timer);

                calendar.timer = setTimeout(function() {
                    options.callback(calendar);
                }, options.callbackDelay);
            }
        }
        fillMonths(date);
        fillYears(date);
        fillDays(date);
        deferredCallBack();

        // Script for json

        function JSONhandler() {
            // var year = date.getFullYear();
            // for (var i = year - options.years; i <= year + options.years; i++) {
            //   var d = new Date(date);
            //   d.setFullYear(i);
            //   if (d.getYear() == calendar.currentDate.getYear())
            //    return calendar.currentDate.getFullYear() + ' ' + calendar.currentDate.getMonth() + ' ' + calendar.currentDate.getDate();
            return calendar.currentDate.getFullYear() + ' ' + calendar.currentDate.getMonth() + ' ' + calendar.currentDate.getDate();
        }
        var dateFormat  = JSONhandler();
        $('#fri-loader').addClass('loader-body');
        // console.log(dateFormat);
        $.ajax({
            type : "POST",
            contentType : "application/json",
            url : "/search/api/create",
            data : JSON.stringify(dateFormat),
            dataType : 'json',
            success : function(data) {
                $('#fri-loader').removeClass('loader-body');
                var output = '';

                data.reverse().forEach(function (event) {

                    output += `
                        <div class="event-content-block">
                            <div class="event-banner">
                                <a href="/event/${event.title}"><img src="data:image/jpeg;base64,${event.image}" alt="event-banner"></a>
                            </div>
                            <div class="event-day">10<span>пн</span></div>
                            <div class="event-title"><a href="#"><p id="myTitle">${event.title}</p></a></div>
                            <div class="event-date-information">
                                <p class="event-date" id="myTime">#</p><span></span>
                                <p class="event-place" id="myPlace">${event.location}</p><span></span>
                                <p class="event-city">Кишинёв</p>
                            </div>
                            <div class="event-mini-information">${event.description}</div>
                            <div class="event-sponsor">
                                <div class="event-user-avatar">
                                    <img src="data:image/jpeg;base64,${event.author.image}" alt="user-avatar">
                                </div>
                                <div class="event-sponsor-name">
                                    организатор
                                    <a href="event/user/${event.author.username}" id="#user"><p>${event.author.username}</p></a>
                                </div>
                            </div>
                        </div>
                    `;

                });
                document.querySelector('.event-main-block').innerHTML = output;
                console.log(data);
                display(data);
            },
            error : function(e) {
                console.log("ERROR: ", e);
                display(e);
            },
            done : function(e) {
                console.log("DONE");
            }
        });

    }


function display(data) {
    var json = "<h4>Ajax Response</h4><pre>"
        + JSON.stringify(data, null, 4) + "</pre>";
    $('#feedback').html(json);
    document.getElementById('myTitle').innerHTML = data[0].title;

}

    theDiv.click(function(ev) {
        var el = $(ev.target).closest(".calelement");
        if (el.hasClass("calelement")) {
            calendar.changeDate(new Date(parseInt(el.attr("millis"))));
        }
    });
    //if mousewheel
    if ($.event.special.mousewheel && options.useWheel) {
        divYears.mousewheel(function(event, delta) {
            var d = new Date(calendar.currentDate.getTime());
            d.setFullYear(d.getFullYear() + delta);
            calendar.changeDate(d);
            return false;
        });
        divMonths.mousewheel(function(event, delta) {
            var d = new Date(calendar.currentDate.getTime());
            d.setMonth(d.getMonth() + delta);
            calendar.changeDate(d);
            return false;
        });
        divDays.mousewheel(function(event, delta) {
            var d = new Date(calendar.currentDate.getTime());
            d.setDate(d.getDate() + delta);
            calendar.changeDate(d);
            return false;
        });
    }



    calendar.changeDate(options.date);
    return calendar;
};