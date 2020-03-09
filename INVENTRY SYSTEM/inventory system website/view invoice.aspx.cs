using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
public partial class view_invoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ky"] == null)
            Response.Redirect("inv.aspx");
        string ky = Session["ky"].ToString();
        OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");

        OracleDataAdapter adp = new OracleDataAdapter("select inv_no,inv_dat,reg,key,mr,sw,addp,addt,con,color,chassis,engine,batt,sale,csig,asig,amount from invoice where inv_no =" + ky + "", con);

        DataSet ds = new DataSet();

        adp.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
    
    }
}
