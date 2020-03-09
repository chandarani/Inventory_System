using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class VECH_ID : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtsubmit_Click(object sender, EventArgs e)
    {

        OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");
        OracleDataAdapter adp = new OracleDataAdapter("select * from vech where vechile_id =" + txtky.Text + "", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["ky"] = ds.Tables[0].Rows[0]["vechile_id"].ToString();
            Response.Redirect("View vehicle entry.aspx");
        }
        else
        {
            Response.Write("invalid vehicle id");
        }
    }
    protected void txtview_Click(object sender, EventArgs e)
    {

        OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");

        OracleDataAdapter adp = new OracleDataAdapter("select vechile_id,model,brand,color,engine,chassis,battery,brake,horn,indicator,wheel,fuel_economy,fuel_tank,dimension,performance,transmission,headlamp,electricals,suspension,price from vech", con);
        DataSet ds = new DataSet();

        adp.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
}