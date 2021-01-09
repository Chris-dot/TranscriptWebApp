


function runSpeechRecognition() {
    // obtener la referencia del div de salida
    var output = document.getElementById("BootstrapMemo2");
    // obtener la referencia del elemento accion 
    var action = document.getElementById("action");
   //  nuevo objto de speech recognition
    var SpeechRecognition = SpeechRecognition || webkitSpeechRecognition;
    
    var recognition = new SpeechRecognition();
    recognition.continuous = true;    
    
   //  reset();
   // recognition.onend = reset;


    recognition.lang = 'es-ES';


   //  This runs when the speech recognition service starts
    recognition.onstart = function () {
    action.innerHTML = "<small>escuchando, por favor hable...</small>";


    };

    recognition.onspeechend = function () {
    action.innerHTML = "<small>dejando de escuchar, espero que hayas terminado...</small>";
    recognition.stop();
    }

    // This runs when the speech recognition service returns result
    recognition.onresult = function (event) {
        var transcript = event.results[0][0].transcript;
        var confidence = event.results[0][0].confidence;
        output.innerHTML = "<b>Texto:</b> " + transcript;
        output.classList.remove("hide");



    };

   //  start recognition
    recognition.start();
}