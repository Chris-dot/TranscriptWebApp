using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Reconocimiento.DataAccess;
using System.Text.RegularExpressions;



namespace Reconocimiento
{
    public partial class PaginaPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //Roles.CreateRole("prueba");
            //MembershipCreateStatus createStatus;

            //MembershipUser newUser = Membership.CreateUser("17904947", "12345678", "chris.mor1697@gmail.com", "color", "rojo", true, out createStatus);



        }

        protected void BtnIngresar_Click(object sender, EventArgs e)
        {

            if (!Regex.IsMatch(txtusuario.Text, @"^[1234567890-K]"))
            {

                ASPLblText.Text = "Debe ingresar solo numeros en usuario";


                return;
            }
             if(!txtusuario.Text.Length.Equals(0) && !txtClave.Text.Length.Equals(0))
             {
                try
                {
                    string usuario = this.txtusuario.Text.Trim().ToString();
                    string contrasena = this.txtClave.Text.Trim().ToString();
                    Session["NombreUsuario"] = usuario;
                    Session["pass"] = contrasena;
                    MembershipUser msu = Membership.GetUser(Session["NombreUsuario"].ToString());
                    if (msu != null)
                    {
                        if ((Membership.ValidateUser(Session["NombreUsuario"].ToString(), Session["pass"].ToString())) && (msu.IsApproved == true))
                        {



                            FormsAuthentication.RedirectFromLoginPage(Session["NombreUsuario"].ToString(), true);

                            try
                            {
                                MembershipUser UsuarioMembership;
                                UsuarioMembership = Membership.GetUser(Session["NombreUsuario"].ToString());

                                //tb_webAuditorDTO log = new tb_webAuditorDTO();


                                //log.sistema = "Acceso";
                                //log.usuaio = Convert.ToString(Membership.GetUser(Session["NombreUsuario"].ToString())).ToString();
                                //log.fecha_reg = DateTime.Now;
                                //log.ip = servicios.LocalIPAddress();
                                //log.comentario = "Ingreso Exitoso sistema Vfs";

                                //new tb_webAuditorDA().guardar(log);

                                // modulo.ip = servicios.LocalIPAddress();

                            }
                            catch (Exception ex)
                            {
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "winPop", servicios.MsgBox(ex.Message), true);
                            }



                        }
                        else

                            try
                            {
                                MembershipUser UsuarioMembership;
                                UsuarioMembership = Membership.GetUser(Session["NombreUsuario"].ToString());

                                //tb_webAuditorDTO log = new tb_webAuditorDTO();


                                //log.sistema = "Acceso";
                                //log.usuaio = txtusuario.Text;
                                //log.fecha_reg = DateTime.Now;
                                //log.ip = servicios.LocalIPAddress();
                                //log.comentario = "Ingreso Fallido al  sistema Vfs Su nombre o contraseña no son validos" + "Usuario:" + txtusuario.Text + " " + "Clave:" + TextBox1.Text;

                                //new tb_webAuditorDA().guardar(log);



                            }
                            catch (Exception ex)
                            {
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "winPop", servicios.MsgBox(ex.Message), true);
                            }



                        throw new Exception("Su nombre o contraseña no son validos");





                    }
                    else

                        try
                        {
                            MembershipUser UsuarioMembership;
                            UsuarioMembership = Membership.GetUser(Session["NombreUsuario"].ToString());

                            //tb_webAuditorDTO log = new tb_webAuditorDTO();


                            //log.sistema = "Acceso";
                            //log.usuaio = txtusuario.Text;
                            //log.fecha_reg = DateTime.Now;
                            //log.ip = servicios.LocalIPAddress();
                            //log.comentario = "Ingreso Fallido al  sistema Vfs No Tiene Los Privilegios" + "Usuario:" + txtusuario.Text + " " + "Clave:" + TextBox1.Text;

                            //new tb_webAuditorDA().guardar(log);



                        }
                        catch (Exception ex)
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "winPop", servicios.MsgBox(ex.Message), true);
                        }



                    throw new Exception("Usted no tiene los privilegios para acceder al sitio web");
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "winPop", servicios.MsgBox(ex.Message), true);
                }

             }
           
                
             
            }
        }
    }
