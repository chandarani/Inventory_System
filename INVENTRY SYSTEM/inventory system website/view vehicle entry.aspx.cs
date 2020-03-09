using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
 
public partial class view_vehicle_entry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ky"] == null)
            Response.Redirect("vech_id.aspx");
        string ky = Session["ky"].ToString();

     OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");

     OracleDataAdapter adp = new OracleDataAdapter("select vechile_id,model,brand,color,engine,chassis,battery,brake,horn,indicator,wheel,fuel_economy,fuel_tank,dimension,performance,transmission,headlamp,electricals,suspension,price from vech where vechile_id =" + ky + "", con);

        DataSet ds = new DataSet();

        adp.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
    
    }
}