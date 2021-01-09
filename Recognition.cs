using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Speech;
using System.Speech.Recognition;



namespace Reconocimiento
{
    public class Recognition
    {

        static void Main(string[] args)
        {

            using (
            SpeechRecognitionEngine recognizer =
              new SpeechRecognitionEngine(
                new System.Globalization.CultureInfo("es-ES")))
            {

                recognizer.LoadGrammar(new DictationGrammar());

                recognizer.SpeechRecognized +=
                  new EventHandler<SpeechRecognizedEventArgs>(recognizer_SpeechRecognized);

                recognizer.SetInputToDefaultAudioDevice();

                recognizer.RecognizeAsync(RecognizeMode.Multiple);

                while (true)
                {
                    Console.ReadLine();
                }
            }
        }

        static void recognizer_SpeechRecognized(object sender, SpeechRecognizedEventArgs e)
        {
            Console.WriteLine("Recognized text: " + e.Result.Text);
        }



    }
}