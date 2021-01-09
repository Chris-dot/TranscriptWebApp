using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;



namespace Reconocimiento
{
    public partial class PaginaPrincipall : PaginaPrincipal
    {
 

        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                
            }

        }


        //    GridView objGV = new GridView(); objGV.AutoGenerateColumns = false;

        //    BoundField field = new BoundField(); field.HeaderText = "Column Header"; field.DataField = Value; objGV.Columns.Add(field);



        //}


        //private void BindDynaicGrd()
        //{ 
        //    //instance of a datatable DataTable dt = new DataTable(); //instance of a datarow DataRow drow;
        //    //creating two datacolums dc1 and dc2 
        //    DataColumn dc1 = new DataColumn("Code", typeof(string)); 
        //    DataColumn dc2 = new DataColumn("Name", typeof(string)); //adding datacolumn to datatable 
        //    dt.Columns.Add(dc1); 
        //    dt.Columns.Add(dc2); 
        //    if (grd.Rows.Count > 0) { foreach (GridViewRow gvr in grdSites.Rows) 
        //    { 
        //        CheckBox chk_Single = (CheckBox)gvr.FindControl("chkSingle");
        //        if (chk_Single.Checked == true) 
        //        { Label lbl_Code = (Label)gvr.FindControl("lblCode"); Label lbl_Name = (Label)gvr.FindControl("lblName");
        //            //instance of a datarow drow = dt.NewRow(); //add rows to datatable //add Column values 
        //            drow = dt.NewRow(); 
        //            drow["Code"] = lbl_Code.Text; drow["Name"] = lbl_Name.Text.ToString(); dt.Rows.Add(drow);
        //        }
        //    }
        //}
        //    //set gridView Datasource as dataTable dt. gridcl.DataSource = dt; //Bind Datasource to gridview gridcl.DataBind();
        //}


        //protected void rpt_ItemDataBound(object sender, RepeaterItemEventArgs e)
        //{
        //    if(e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        //    {
        //        GridView gv = (GridView)e.Item.FindControl("grd");
        //        if (gv != null) 
        //        {
        //            DataRowView drv = (DataRowView)e.Item.DataItem;
        //            gv.DataSource = GetSubData(Convert.ToInt32(drv["ID"]));
        //            gv.DataBind();
        //        }
        //    }
        

        protected void ddlDepto_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListItem i;
            i = new ListItem("Finanzas", "1");
            ddlDepto.Items.Add(i);
            i = new ListItem("Comercial", "2");
            ddlDepto.Items.Add(i);
            i = new ListItem("Depto. de Informática", "3");
            ddlDepto.Items.Add(i);
            i = new ListItem("Recursos Humanos", "4");
            ddlDepto.Items.Add(i);
            i = new ListItem("Marketing", "5");
        }
    }

}
