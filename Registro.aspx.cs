using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Reconocimiento
{
    public partial class WebForm1Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string formatearRut(string rut)
        {
            int cont = 0;
            string format;
            if (rut.Length == 0)
            {
                return "";
            }
            else
            {
                //  rut = rut.Replace("", "");
                rut = rut.Replace("-", "");
                format = "-" + rut.Substring(rut.Length - 1);
                for (int i = rut.Length - 2; i >= 0; i--)
                {
                    format = rut.Substring(i, 1) + format;
                    cont++;
                    if (cont == 3 && i != 0)
                    {
                        //  format = "." + format;
                        cont = 0;
                    }
                }
                return format;
            }

        }

       


        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            if (!Regex.IsMatch(txtRut.Text, @"^[1234567890-K]"))
            {

                //this.txtTelefono.ValidationSettings.ErrorText = "Solo debe ingresar numeros";
                //this.txtTelefono.HelpText = "Solo debe ingresar numeros";
                //txtTelefono.IsValid = false;
                //v.Cancel = true;


                ASPLblUser.Text = "Debe ingresar solo numeros en usuario";


                return;
            }



            //if (!txtNombre.Text.Length.Equals(0))
            //{

            //}else{
            //    CustomValidator1.ErrorMessage = "No puede esta vacio";
            //    CustomValidator1.IsValid = false;
            //


            //   if(Page.IsValid)
            //   {
            //       LblInfoGuard.Text = "Informacion guardada";
            //       //CustomValidator1.ForeColor = System.Drawing.Color.Green;
            //   }
            //   else
            //   {
            //       LblInfoGuard.Text = "Error en la validacion, informacion no guardada";
            //       //CustomValidator1.ForeColor = System.Drawing.Color.Green;
            //   }
            //}

            //protected void CustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
            //{
            //    if (Convert.ToInt32(args.Value) % 2 == 0)
            //    {
            //        args.IsValid = true;
            //    }
            //    else
            //    {
            //        args.IsValid = false;
            //    }

           
            ////                                            VALIDACION DE CAMPOS DE TEXTO                                          ////
            


            if (!string.IsNullOrEmpty(txtRut.Text) & (!string.IsNullOrEmpty(txtNombre.Text) & (!string.IsNullOrEmpty(txtApellidos.Text) &
                (!string.IsNullOrEmpty(txtCargo.Text) & (!string.IsNullOrEmpty(txtTelefono.Text) &
                (!string.IsNullOrEmpty(txtEmail.Text)))))))
            {
                //ASPLblUser.Text = "Debe completar este campo, es obligatorio";

                //ASPLblNombre.Text = "Debe completar este campo, es obligatorio";

                //ASPLblApellidos.Text = "Debe completar este campo, es obligatorio";

                //ASPLblCargo.Text = "Debe completar este campo, es obligatorio";

                //ASPLblTelefono.Text = "Debe completar este campo, es obligatorio";

                //ASPLblEmail.Text = "Debe completar este campo, es obligatorio";

                //return;

            }
            else
            {

                if (!txtRut.Text.Length.Equals(0))
                {
                    ASPLblUser.Text = "";
                    ASPLblUser.Visible = false;
                }
                else
                {
                    ASPLblUser.Text = "Debe completar este campo, es obligatorio";
                    ASPLblUser.Visible = true;
                }


                if (!txtNombre.Text.Length.Equals(0))
                {
                    ASPLblNombre.Text = "";
                    ASPLblNombre.Visible = false;
                }
                else
                {
                    ASPLblNombre.Text = "Debe completar este campo, es obligatorio";
                    ASPLblNombre.Visible = true;
                }

                if (!txtApellidos.Text.Length.Equals(0))
                {
                    ASPLblApellidos.Text = "";
                    ASPLblApellidos.Visible = false;
                }
                else
                {
                    ASPLblApellidos.Text = "Debe completar este campo, es obligatorio";
                    ASPLblApellidos.Visible = true;
                }

                if (!txtCargo.Text.Length.Equals(0))
                {
                    ASPLblCargo.Text = "";
                    ASPLblCargo.Visible = true;
                }
                else
                {
                    ASPLblCargo.Text = "Debe completar este campo, este obligatorio";
                    ASPLblCargo.Visible = true;
                }
                if (!txtTelefono.Text.Length.Equals(0))
                {
                    ASPLblTelefono.Text = "";
                    ASPLblTelefono.Visible = false;
                }
                else
                {
                    ASPLblTelefono.Text = "Debe completar este campo, es obligatorio";
                    ASPLblTelefono.Visible = true;
                }
                if (!txtEmail.Text.Length.Equals(0))
                {
                    ASPLblEmail.Text = "";
                    ASPLblEmail.Visible = false;
                }
                else
                {
                    ASPLblEmail.Text = "Debe completar este campo, es obligatorio";
                    ASPLblEmail.Visible = true;
                }
            }

            //if(string.IsNullOrEmpty(txtRut.Text))
            //{
            //    ASPLblUser.Text = "Debe completar este campo, es obligatorio";
            //}
            //else if (!txtRut.Text.Length.Equals(0))
            //{

            //}

            //if (string.IsNullOrEmpty(txtNombre.Text))
            //{
            //    ASPLblNombre.Text = "Debe completar este campo, es obligatorio";
            //}
            //else if (!txtNombre.Text.Length.Equals(0))
            //{

            //}
            //if (string.IsNullOrEmpty(txtApellidos.Text))
            //{
            //    ASPLblApellidos.Text = "Debe completar este campo, es obligatorio";
            //}
            //else if (!txtApellidos.Text.Length.Equals(0))
            //{

            //}
            //if (string.IsNullOrEmpty(txtCargo.Text))
            //{
            //    ASPLblCargo.Text = "Debe completar este campo, es obligatorio";
            //}
            //else if (!txtCargo.Text.Length.Equals(0))
            //{

            //}
            //if (string.IsNullOrEmpty(txtTelefono.Text))
            //{
            //    ASPLblTelefono.Text = "Debe completar este campo, es obligatorio";
            //}
            //else if (!txtTelefono.Text.Length.Equals(0))
            //{

            //}
            //if (string.IsNullOrEmpty(txtEmail.Text))
            //{
            //    ASPLblEmail.Text = "Debe completar este campo, es obligatorio";
            //}
            //else if (!txtEmail.Text.Length.Equals(0))
            //{

            //}








            txtRut.Text = formatearRut(txtRut.Text);

        }






        public static void SoloNumeros_KeyPress(object sender, KeyPressEventArgs v)
        {


        }

        //protected void txtRut_TextChanged(object sender, EventArgs v)
        //{
        //    SoloNumeros_KeyPress(null, null);

        //}

        public static bool IsNumeric(string num)
        {
            try
            {
                double x = Convert.ToDouble(num);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }


        public static void txtTelefono_TextChanged(object sender, EventArgs e)
        {
            IsNumeric();
        }

        private static void IsNumeric()
        {
            throw new NotImplementedException();
        }

        protected void CusValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }

    }
}