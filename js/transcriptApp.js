


function runSpeechRecognition() {
    // get output div reference
    var output = document.getElementById("output");
    // get action element reference
    var action = document.getElementById("action");
    // new speech recognition object
    var SpeechRecognition = SpeechRecognition || webkitSpeechRecognition;
    var recognition = new SpeechRecognition();

    
    recognition.lang = 'es-ES';

    // Esto corre cuando comienza el servicio de reconocimiento de voz comienza
    recognition.onstart = function () {
        action.innerHTML = "<small>escuchando, por favor hable...</small>";
    };

    recognition.onspeechend = function () {
        action.innerHTML = "<small>dejando de escuchar, espero que hayas terminado...</small>";
        recognition.stop();
    }

    // Esto corre cuando el servicio de reconocimiento de voz devuelve un resultado
    recognition.onresult = function (event) {
        var transcript = event.results[0][0].transcript;
        var confidence = event.results[0][0].confidence;
        output.innerHTML = "<b>Texto:</b> " + transcript + "<br/> <b>Certeza:</b> " + confidence * 100 + "%";
        output.classList.remove("hide");
    };

    // Comenzar reconocimieto
    recognition.start();
}