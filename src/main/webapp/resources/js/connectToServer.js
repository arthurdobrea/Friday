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
    alert(servermessage);
    console.log(servermessage);
    var decoded = $("<div/>").html(servermessage).text();
    var event = '/event/' + servermessage;
    document.getElementById("response").setAttribute("href",event);
    var tmp = "";
    var serverResponse = document.getElementById("response");
    var p = document.createElement('p');
    p.style.wordWrap = 'break-word';

    if (localMessage) {
        p.style.color = '#006600';
        tmp = "<span class='glyphicon glyphicon-dashboard'></span> " + decoded + ")";
    } else {
        p.style.color = '##ffffff';
        tmp = " <span class='glyphicon glyphicon-arrow-right'></span> " + decoded;
    }
    //Assigning the decoded HTML to the <p> element
    p.innerHTML = tmp;
    serverResponse.appendChild(p);

}

/**
 * Utility function to return the date time in simple format
 * like Tue Jan 07 2014 @ 11:47:24 AM
 */

