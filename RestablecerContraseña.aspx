<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RestablecerContraseña.aspx.cs" Inherits="Reconocimiento.RestablecerContraseña" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Restablecer contraseña</title>
    <link rel="stylesheet" href="/css/estilo.css"/>
</head>
<body>

    <!--Formulario para envio de Correo de Recuperacion de contraseña-->
    
    <form id="form1" runat="server">
        <div>

            <h3 class="titleRecovery" style="text-align: center; padding-bottom: 15px; background-color: #5467ff; color: #ffffff; padding-top: 15px;">Restablecer contraseña</h3>

            <br />

            <asp:Label CssClass="RecoveryPassword" ID="lblSubTitle" runat="server" Text="LabelTitle" style="font-size: 22px; margin-top: 20px;">Introduce tu Email</asp:Label>
            
            <br />
            <br />

            <asp:Label ID="LblDescription" runat="server" Text="Label">Escribe la direccion de correo electronico con la que te registraste y le enviaremos un email con el que podria restablecer su contraseña</asp:Label>            

            <br />

            <asp:TextBox ID="txtEmail" runat="server" PlaceHolder="Email" Width="430px" Height="30px"></asp:TextBox>

            <dx:ASPxButton ID="ResetPassword" runat="server" Text="Enviar" Theme="DevEx" CssClass="RecoveryBtn" Width="430px" Height="30px" OnClick="ResetPassword_Click"></dx:ASPxButton>

            <asp:Label ID="lblMsg"  runat="server" Text="" Style="font-size: 18px;"></asp:Label>


        </div>


        <!---RESET PASSWORD EJEM-->

      
         <%-- <h3>Reset Password</h3>

          <asp:Label id="Msg" runat="server" ForeColor="maroon" /><br />

          Username: <asp:Textbox id="UsernameTextBox" Columns="30" runat="server" AutoPostBack="true" />
                    <asp:RequiredFieldValidator id="UsernameRequiredValidator" runat="server"
                                                ControlToValidate="UsernameTextBox" ForeColor="red"
                                                Display="Static" ErrorMessage="Required" /><br />

          Password Question: <b><asp:Label id="QuestionLabel" runat="server" /></b><br />

          Answer: <asp:TextBox id="AnswerTextBox" Columns="60" runat="server" Enabled="false" />
                  <asp:RequiredFieldValidator id="AnswerRequiredValidator" runat="server"
                                              ControlToValidate="AnswerTextBox" ForeColor="red"
                                              Display="Static" ErrorMessage="Required" Enabled="false" /><br />

          <asp:Button id="ResetPasswordButton" Text="Reset Password" 
                      OnClick="ResetPassword_OnClick" runat="server" Enabled="false" />--%>


    </form>
</body>
</html>
