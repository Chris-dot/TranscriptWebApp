<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpeechRecognitionAPI.aspx.cs" Inherits="Reconocimiento.SpeechRecognitionAPI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>      
    <title></title>
    <link rel="stylesheet" href="css/ExampleAPI.css" />  
</head>
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="example">
        <textarea id="texto"></textarea>
        <button type="button" id="procesar" onclick="procesar()">Escuchar</button>    
    </div>
    <%--</form>--%>

    <script src="js/recognition.js" type="text/javascript"></script>
</body>
</html>
