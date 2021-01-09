<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Reconocimiento.WebForm1Registro" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro</title>
    <link rel="stylesheet" href="/css/estilo.css" />
    <script src="dist/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="dist/sweetalert.css"/>
</head>
<body>


    <form id="form1" runat="server"> <asp:scriptmanager runat="server"></asp:scriptmanager>
    <div>
        <h2>Registro</h2>
        

            <dx:ASPxLabel ID="ASPLblUser" runat="server" Text=""></dx:ASPxLabel>
            <asp:TextBox ID="txtRut" placeholder="Usuario" name="Rut" runat="server" ></asp:TextBox>


             
             <asp:TextBox ID="txtNombre" placeholder="Nombres" name="Rut" runat="server"></asp:TextBox>
             <dx:ASPxLabel ID="ASPLblNombre" runat="server" Text="" ForeColor="Red"></dx:ASPxLabel>


                <asp:CustomValidator ID="CusValidator1" controltovalidate="txtApellidos" OnServerValidate="CusValidator1_ServerValidate" 
                                     runat="server" ErrorMessage="Debe completar este campo, es obligatorio" 
                                     Display="Dynamic">
                </asp:CustomValidator>


                
                <asp:TextBox ID="txtApellidos" placeholder="Apellidos" name="Apellidos" runat="server"></asp:TextBox>
                <dx:ASPxLabel ID="ASPLblApellidos" runat="server" Text="" ForeColor="Red"></dx:ASPxLabel>
        
               
                <asp:TextBox ID="txtCargo" placeholder="Cargo" Font-Names="Cargo" runat="server"></asp:TextBox>                
                 <dx:ASPxLabel ID="ASPLblCargo" runat="server" Text="" ForeColor="Red"></dx:ASPxLabel>
                 
             
             <asp:TextBox ID="txtTelefono" placeholder="Telefono" name="Telefono" runat="server"></asp:TextBox>
             <dx:ASPxLabel ID="ASPLblTelefono" runat="server" Text="" ForeColor="Red"></dx:ASPxLabel>
        
            
            <asp:TextBox ID="txtEmail" placeholder="Email" name="Email" runat="server"></asp:TextBox>
            <dx:ASPxLabel ID="ASPLblEmail" runat="server" Text="" ForeColor="Red"></dx:ASPxLabel>

        <asp:Button ID="BtnRegistrar" runat="server" Text="Registrar" OnClick="BtnRegistrar_Click"/>
        <asp:Label ID="LblInfoGuard" runat="server" Text=""></asp:Label>

    
    </div>
    </form>
</body>
</html>
