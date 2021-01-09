<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaPrincipall.aspx.cs" Inherits="Reconocimiento.PaginaPrincipall" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
   <%-- <link href="css/Principal.css" rel="stylesheet" />--%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>

</head>
<body style="background-color:silver;">
    

    <div class="container-fluid">
    <form id="form1" runat="server">
        


        <div class="form-group" style="margin: auto;
    width: 100%;
    max-width: 1500px;
    background: #F3F3F3;
    padding: 30px;
    border: 1px solid rgba(0,0,0,0.2);
    margin-top: 0px;">
            <div>
                <label style="font-size:x-large">Agendar Reunión</label>
                <br />
                <br />
            </div>
            <div class="row">

                <div class="col-md-3">

                    <div class="form-group">
                        <label>Seleccione fecha</label>
                        <dx:ASPxDateEdit ID="ASPxDateEdit1" runat="server" NullText="Fecha" Theme="MetropolisBlue" Height="35px" Width="95%" CssClass="form-control">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Campo requerido" />
                            </ValidationSettings>
                        </dx:ASPxDateEdit>
                    </div>
                </div>
                <br />
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Departamento</label>
                        <br />
                        <asp:DropDownList ID="ddlDepto" runat="server" CssClass="form-control" Height="35px" Width="85%" Theme="DevEx" OnSelectedIndexChanged="ddlDepto_SelectedIndexChanged"></asp:DropDownList>                        
                    </div>
                </div>
            </div>




            <!--Col 2-->


            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Hora inicio</label>
                        <dx:ASPxTimeEdit ID="ASPxTimeEdit1" Width="95%" runat="server" CssClass="form-control" Theme="DevEx">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Obligatorio" />
                            </ValidationSettings>
                        </dx:ASPxTimeEdit>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="form-group">
                        <label>Hora termino</label>
                        <dx:ASPxTimeEdit ID="aspTimeEdit" Width="110%" runat="server" CssClass="form-control" Theme="DevEx">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Campo requerido" />
                            </ValidationSettings>
                        </dx:ASPxTimeEdit>




                    </div>
                </div>
            </div>

            <br />

            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Presenta exposición</label>
                        <dx:BootstrapRadioButtonList ID="BootstrapRadioButton2" runat="server" RepeatColumns="2" ValueType="System.String">
                            <Items>
                                <dx:BootstrapListEditItem Text=" Si" Value="Si" />
                                <dx:BootstrapListEditItem Text=" No" Value="No" />
                            </Items>
                        </dx:BootstrapRadioButtonList>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="form-group">
                        <label>Responsable</label>
                        <dx:BootstrapMemo ID="BTMResponsable" runat="server" Rows="3" Width="85%" NullText="Ingrese un responsable">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Ingrese responsable de la sala" />
                            </ValidationSettings>
                        </dx:BootstrapMemo>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Con Video Conferencia</label>
                        <dx:BootstrapRadioButtonList ID="ASPxRadioButtonList2" runat="server" RepeatColumns="2" ValueType="System.String">
                            <Items>
                                <dx:BootstrapListEditItem Text=" Si" Value="Si" />
                                <dx:BootstrapListEditItem Text=" No" Value="No" />
                            </Items>
                        </dx:BootstrapRadioButtonList>
                    </div>
                </div>

                <%-- DEVEXPRESS DROPDOWN --%>


                <div class="col-md-3">
                    <div class="form-group">
                        <label>Estado</label>
                        <asp:DropDownList ID="DropDownEstado" CssClass="form-control" Width="85%" Height="35px" Theme="DevEx" runat="server"></asp:DropDownList>
                        
                           
                        
                    </div>
                </div>



            </div>

            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Observacion</label>
                        <dx:BootstrapMemo runat="server" NullText="Ingrese una observacion" Rows="6" Width="193%" EnableViewState="True" ViewStateMode="Inherit">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Campo requerido" />
                            </ValidationSettings>
                        </dx:BootstrapMemo>
                    </div>
                </div>


            </div>

            <div class="row">
                <div class="col-sm-3">
                    <button id="btnGuardar" type="button" class="btn btn-primary">Guardar</button>
                </div>

                <div class="col-sm-3">
                    <button id="btnLimpiar" type="button" class="btn btn-primary" onclick="this.form.reset(); return false;">Nuevo Registro</button>
                    

                </div>

            </div>



            <!--SQLDATASOURCE-->

            


            
            <!--GRIDVIEW CONTROL -->
                   

            <div class="datagrid">

                <asp:GridView ID="GridView1" runat="server">

                    <Columns>
                        <asp:BoundField DataField="Numero" HeaderText="Numero" />
                        <asp:BoundField DataField="NombreCompleto" HeaderText="Nombre completo" />
                    </Columns>

                </asp:GridView>

                    



                <a href="transcripApp.aspx"><input id="btnAvanzar" type="button" class="btn btn-primary" style="position:relative; margin-left: 90%; margin-top:-4%;" value="Siguiente"/></a>

                
            </div>


                

            
            



        <!--END OF GRIDVIEW-->


            






           </div>
       </form>
    </div>


            <%--<script src="//cdnjs.cloudflare.com/ajax/libs/annyang/2.4.0/annyang.min.js"></script>--%>
            <script> src = "js/recognition.js"</script>

            
    </body>    
    
  
        


</html>
