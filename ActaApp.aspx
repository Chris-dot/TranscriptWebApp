<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActaApp.aspx.cs" Inherits="Reconocimiento.ActaApp" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<link href="css/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="css/ActaApp.css" rel="stylesheet" />
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="js/transcriptApp2.js" type="text/javascript"></script>
    <link href="css/ActaApp.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="margin: auto;
                                  width: 100%;
                                  max-width: 1000px;
                                  background: #F3F3F3;
                                  padding: 30px;
                                  border: 1px solid rgba(0,0,0,0.2);
                                  margin-top: 50px;">
    


    <div>
        <label style="font-size:22px;">Acta</label>
        <br />
        <br />

    </div>

    <div class="row">

        <div class="col-md-3">
                    <div class="form-group">
                        <label>Fecha</label>
                        <dx:ASPxDateEdit ID="ASPxDateEdit2" runat="server" NullText="" Theme="MetropolisBlue" Height="35px" Width="32%" CssClass="form-control">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Campo requerido" />
                            </ValidationSettings>
                        </dx:ASPxDateEdit>
                    </div>

     
        <br />


         <div class="row">

                <div class="col-md-3">
                    <div class="form-group">
                        <label>Hora de inicio</label>
                        <dx:ASPxTimeEdit ID="ASPxTEInicio" Width="32%" Height="35px" runat="server" CssClass="form-control" Theme="DevEx">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Obligatorio" />
                            </ValidationSettings>
                        </dx:ASPxTimeEdit>
                    </div>
                </div>


        </div>

        <br />


        <div class="col-md-3">
                    <div class="form-group">
                        <label>Hora de termino</label>
                        <dx:ASPxTimeEdit ID="aspTimeETermino" Width="32%" Height="35px" runat="server" CssClass="form-control" Theme="DevEx">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Campo requerido" />
                            </ValidationSettings>
                        </dx:ASPxTimeEdit>

                    </div>
         </div>

         <br />


          <div class="col-md-3">
                    <div class="form-group">
                        <label>Lugar de la reunion</label>
                        <dx:BootstrapMemo ID="BTMLugar" runat="server" Rows="2" Width="90%" NullText="Ingrese un lugar">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Ingrese un lugar" />
                            </ValidationSettings>
                        </dx:BootstrapMemo>
                    </div>
          </div>
        
          <br />
            
            
           <div class="col-md-3">
                    <div class="form-group">
                        <label>Objetivo de la reunion</label>
                        <dx:BootstrapMemo ID="BootstrapMemReunion" runat="server" Rows="6" Width="90%" NullText="Ingrese un objetivo">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Ingrese un objetivo" />
                            </ValidationSettings>
                        </dx:BootstrapMemo>
                    </div>
          </div> 
            
          <br />
            
          <div class="col-md-3">
                    <div class="form-group">
                        <label>Asistentes</label>
                        <dx:BootstrapMemo ID="BootstrapMemo1" runat="server" Rows="6" Width="90%" NullText="Ingrese a los asistentes">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Ingrese a lo asistentes" />
                            </ValidationSettings>
                        </dx:BootstrapMemo>
                    </div>
          </div>             

    </div>

    <br />


    <div class="row">
        <div class="col-md-6">
            <div class="col-md-3">
                    <div class="form-group-meet" >
                        <label>Desarrollo de la conversacion</label>
                        <br/>
                        <dx:BootstrapMemo CssClasses-Control="MemoMeet" ID="BootstrapMemo2" Style="display:block" runat="server" Rows="80" Columns="9" Width="190px" NullText="" >
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="" />
                            </ValidationSettings>
                        </dx:BootstrapMemo>      
                                          

                        <p><button type="button" style="width: 100%; height:45px; background-color: #3653D5; color:white; font-size:20px;" onclick="runSpeechRecognition()">Comenzar transcripcion de voz</button> &nbsp; <span id="action"></span></p>

                    </div>
          </div>   
        </div>

    </div>

        



    </div>
    </div>
    </form>
    <script src="js/transcriptApp2.js" type="text/javascript"></script>
</body>
</html>
