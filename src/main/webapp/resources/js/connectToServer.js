function connectToServer() {
    var stompClient = null;
    $("#response").empty();
    var socket = new SockJS('/notification');
    stompClient = Stomp.over(socket);
    stompClient.connect('', '', function (frame) {
        setConnected(true);
        console.log("Connected: " + frame);
        stompClient.subscribe('/user/queue/reply', function (servermessage) {//Callback when server responds
            showServerBroadcast(servermessage.body, false);
        });
    });
}

function setConnected(connected) {
    $("#connect").prop('disabled', connected);
}


// Function to disconnect the web client to the websocket server
function disconnect() {
    //First hide any alerts
    $("#formAlert").slideUp(400);
    $("#formInfoAlert").slideUp(400);
    // Disconnect the stompClient
    stompClient.disconnect();
    // Set the connect and disconnect button states
    setConnected(false);
    // In production remove the next line
    console.log("Disconnected");
    showServerBroadcast("WebSocket connection is now terminated!", true);
}

// Function to send the message typed in by the user to the "/app/simplemessages" destination on the server.
// WebsocketBroadcastController will receive this message and broadcast the results after
// an artificially introduced delay.
function sendMessageToServer(messageForServer) {
    //Show on the browser page that a message is being sent
    showServerBroadcast("Your message '" + messageForServer + "' is being sent to the server.", true);
    // The message for the server must be in JSON format. Also refer SimpleMessage.java POJO.
    stompClient.send("/app/simplemessages", {}, JSON.stringify({
        'message' : messageForServer
    }));
}

/**
 * Function to show the server response on the web page
 * @param servermessage - text to be shown on webpage
 * @param localMessage - boolean, if true then it means its a
 *                       client side javascript generated message.
 */
function showServerBroadcast(servermessage, localMessage) {
    function monthName(mon) {
        return ['Янв', 'Фев', 'Мар', 'Апр', 'Май', 'Июн', 'Июл', 'Авг', 'Сен', 'Окт', 'Ноя', 'Дек'][mon - 1];
    }
    // alert(servermessage);
    user_notify = JSON.parse(servermessage);
    let notify_output = '';
    [user_notify].map(function (notify) {
        return notify_output += `
            <div class="notify-post-item">
				<div class="user-profile-avatar" style="background-image: url(data:image/jpeg;base64,${notify.image})"></div>
				<div class="notify-content">
						Организатор <a href="#">${notify.author}</a> опубликовал новое событие: <a href="#">${notify.title}</a>
					<div class="post-date">
						
					</div>${notify.eventCreated[3]}:${notify.eventCreated[4]} ${notify.eventCreated[2]} ${monthName(notify.eventCreated.slice(1, 2))} ${notify.eventCreated[0]}
				</div>
				<div class="notify-event-banner" style="background-image: url(data:image/jpeg;base64,${notify.image})"></div>
			</div>
        `;
    });
    document.querySelector('.notify-body').innerHTML = notify_output;
    console.log(user_notify);
}

/**
 * Utility function to return the date time in simple format
 * like Tue Jan 07 2014 @ 11:47:24 AM
 */

