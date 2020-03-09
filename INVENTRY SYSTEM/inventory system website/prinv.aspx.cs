using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class prinv : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["txtinvno"] == null)
            Response.Redirect("invoice.aspx");
        string txtinvno = Session["txtinvno"].ToString();
        OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");
        OracleDataAdapter adp = new OracleDataAdapter("select * from invoice where inv_no=" + txtinvno + "",con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
          txtms.Text = ds.Tables[0].Rows[0]["mr"].ToString();
           txtdof.Text = ds.Tables[0].Rows[0]["sw"].ToString();
           txtaddp.Text = ds.Tables[0].Rows[0]["addp"].ToString();
            txtaddt.Text = ds.Tables[0].Rows[0]["addt"].ToString();
            txtcon.Text = ds.Tables[0].Rows[0]["con"].ToString();
           
            txtinvdat.Text= ds.Tables[0].Rows[0]["inv_dat"].ToString();
            txtcolv.Text = ds.Tables[0].Rows[0]["color"].ToString();
            txtchassis.Text= ds.Tables[0].Rows[0]["chassis"].ToString();
            txtengn.Text = ds.Tables[0].Rows[0]["engine"].ToString();
            txtreg.Text = ds.Tables[0].Rows[0]["reg"].ToString();
            txtkeyn.Text = ds.Tables[0].Rows[0]["key"].ToString();
            txtbatn.Text = ds.Tables[0].Rows[0]["batt"].ToString();
            txtsale.Text = ds.Tables[0].Rows[0]["sale"].ToString();
            txtamou.Text = ds.Tables[0].Rows[0]["amount"].ToString();
            txtcsig.Text = ds.Tables[0].Rows[0]["csig"].ToString();
            txtasig.Text= ds.Tables[0].Rows[0]["asig"].ToString();
        }
    }
}