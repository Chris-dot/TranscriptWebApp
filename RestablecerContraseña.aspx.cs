using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

namespace Reconocimiento
{
    public partial class RestablecerContraseña : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        

        protected void ResetPassword_Click(object sender, EventArgs e)
        {
           


            string mainconn = ConfigurationManager.ConnectionStrings["SqlConnection_VVFF"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select Email, Password from [dbo].[aspnet_Membership],[dbo].[aspnet_Users] where Email=@Email";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Email", txtEmail.Text);
            sqlconn.Open();
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            if(sdr.Read())
            {
                string username = sdr["Email"].ToString();
                string password = sdr["Password"].ToString();


                MailMessage mm = new MailMessage("chris.mor1697@gmail.com", txtEmail.Text);
                mm.Subject = "Your Password !";
                mm.Body = string.Format("Hola : <h1{0}</h1> es tu id Email  <br/> tu contraseña es <h1>{1}</h1>", username, password);
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "17904947-K";
                nc.Password = "12345678";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 465;
                smtp.Send(mm);
                lblMsg.Text = "Tu contraseña a sido enviada a " + txtEmail.Text;
                lblMsg.ForeColor = Color.Green;


            }
            else
            {
                lblMsg.Text = txtEmail.Text + " Este ID de Email no existe en nuestra base de datos";
                lblMsg.ForeColor = Color.Red;
            }  


        }







    }
}