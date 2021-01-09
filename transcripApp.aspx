<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transcripApp.aspx.cs" Inherits="Reconocimiento.transcripApp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Voz a texto</title>
<script src="js/transcriptApp.js" type="text/javascript"></script>
<link href="css/RecognitionCSS.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="margin: auto;
                                  width: 50%;
                                  max-width: 500px;
                                  background: #F3F3F3;
                                  padding: 30px;
                                  border: 1px solid rgba(0,0,0,0.2);
                                  margin-top: 50px;">

        <h2 class="align-text" style="align-content: center; font-size: 28px; margin-left: 40%;">Voz a texto</h2>
        <p style="text-align:center;">Haga click en el boton de abajo y diga algo...</p>
        <p><button type="button" style="width: 100%;" onclick="runSpeechRecognition()">Comenzar prueba de audio</button> &nbsp; <span id="action"></span></p>
        <div id="output" class="hide"></div>
        
        <div class="cssMiImgBtn">       
            <a href="ActaApp.aspx"><input id="btnAvanzar2" type="button" class="btn btn-primary" style="position:relative; margin-left: 85%; margin-top:-4%; background-color: #3653D5; color:white;" value="Siguiente"/></a>
        </div>
        

    </div>
    </form>
</body>
</html>
