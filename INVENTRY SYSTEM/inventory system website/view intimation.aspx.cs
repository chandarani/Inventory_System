using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
public partial class view_intimation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["ky"] == null)
            Response.Redirect("key.aspx");
        string ky = Session["ky"].ToString();

        OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");

        OracleDataAdapter adp = new OracleDataAdapter("select key,chassis,engine,name,father_name,per_add,mobile_no,model,color,engine,salesman,cash,road_price,total from inti where key =" + ky + "", con);

        DataSet ds = new DataSet();

        adp.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
    
    }

}