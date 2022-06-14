document.addEventListener('deviceready', onDeviceReady, false);

onGeolocationSucess = function (position){
    // alert(
    //    'Latitude: '          + position.coords.latitude          + '\n' +
    //    'Longitude: '         + position.coords.longitude         + '\n' +
    //    'Altitude: '          + position.coords.altitude          + '\n' +
    //    'Accuracy: '          + position.coords.accuracy          + '\n' +
    //    'Altitude Accuracy: ' + position.coords.altitudeAccuracy  + '\n' +
    //    'Heading: '           + position.coords.heading           + '\n' +
    //    'Speed: '             + position.coords.speed             + '\n' +
    //   'Timestamp: '         + position.timestamp                + '\n');

        document.getElementById("Latitude").value=position.coords.latitude;
        document.getElementById("Longitude").value=position.coords.longitude;
        document.getElementById("Altitude").value=position.coords.altitude;
        document.getElementById("Accuracy").value=position.coords.accuracy;
        document.getElementById("Altitude Accuracy").value=position.coords.altitudeAccuracy;
        document.getElementById("Heading").value=position.coords.heading;
        document.getElementById("Speed").value=position.coords.speed;
        document.getElementById("Timestamp").value=position.timestamp;
}

function parardeObservarPosition(watchID){
    navigator.geolocation.clearWatch(window.watchID);

}


onGeolocationError = function (error){
    alert(
        'code: '    + error.code    + '\n' +
        'message: ' + error.message + '\n');

}

geolocationOptions = {
    maximumAge: 30000,
    timeout: 50000,
    enableHighAccuracy: true

}

function onDeviceReady(){
    console.log('Running cordova-' + cordova.platformId + '@' + cordova.version);
    alert("Vamos obrter a Geolocalização agora...");

    window.watchID = navigator.geolocation.watchPosition(
        onGeolocationSucess,
        onGeolocationError,
        geolocationOptions
    );
}