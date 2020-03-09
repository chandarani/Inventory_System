using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["txtkey"] == null)
            Response.Redirect("intimation.aspx");
        string key = Session["txtkey"].ToString();
        OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");
        OracleDataAdapter adp = new OracleDataAdapter("select * from inti where key='" + key + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtnam.Text = ds.Tables[0].Rows[0]["name"].ToString();
            txtfath.Text = ds.Tables[0].Rows[0]["father_name"].ToString();
            txtpadd.Text = ds.Tables[0].Rows[0]["per_add"].ToString();
            txtmob.Text = ds.Tables[0].Rows[0]["mobile_no"].ToString();
            txtmod.Text = ds.Tables[0].Rows[0]["model"].ToString();
            txtcol.Text = ds.Tables[0].Rows[0]["color"].ToString();
            txtchas.Text = ds.Tables[0].Rows[0]["chassis"].ToString();
            txteng.Text = ds.Tables[0].Rows[0]["engine"].ToString();
            txtkey.Text = ds.Tables[0].Rows[0]["key"].ToString();
            txtcash.Text = ds.Tables[0].Rows[0]["cash"].ToString();
            txtsale.Text = ds.Tables[0].Rows[0]["salesman"].ToString();
            txtpri.Text = ds.Tables[0].Rows[0]["road_price"].ToString();
            txttot.Text = ds.Tables[0].Rows[0]["total"].ToString();
        }
       
    }
}