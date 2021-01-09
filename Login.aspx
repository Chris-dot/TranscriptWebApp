<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Reconocimiento.PaginaPrincipal" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link rel="stylesheet" href="/css/estilo.css" />
</head>
<body>



    <form action="" id="form1" runat="server">
        
        <h2>Login</h2>
        <dx:ASPxLabel ID="ASPLblText" runat="server" Text="" ForeColor="Red"></dx:ASPxLabel> 

        <asp:TextBox ID="txtusuario" placeholder="&#x1f468; Usuario" name="usuario" AutoPostBack="true" runat="server"></asp:TextBox>   
        
        <br />     

        <dx:ASPxLabel ID="ASPxLabelPass" runat="server" Text="" ForeColor="Red"></dx:ASPxLabel> 

        <asp:TextBox ID="txtClave" placeholder="&#128272; Password" name="Password" runat="server" TextMode="Password"></asp:TextBox>

        <asp:HyperLink ID="HyperLink2" runat="server" href="RestablecerContraseña.aspx">Recuperar contraseña</asp:HyperLink>
       
        <asp:Button class="btnIngresar" ID="BtnIngresar" Style="background-color:blue; color:white;" runat="server" Text="Ingresar" OnClick="BtnIngresar_Click" />

        <asp:HyperLink class="Registrarse" ID="HyperLink1" runat="server" href="Registro.aspx">Registrarse</asp:HyperLink>
         
        <div>
          
    </div>

    </form>

</body>

</html>
