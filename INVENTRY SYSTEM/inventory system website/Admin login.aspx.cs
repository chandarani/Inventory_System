using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class Admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtlogin_Click(object sender, EventArgs e)
    {
        OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");
        OracleDataAdapter adp = new OracleDataAdapter("select * from reg where email='" + txtuid.Text + "' and pass='" + txtpass.Text + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["uid"] = ds.Tables[0].Rows[0]["email"].ToString();
            Response.Redirect("Admin form.aspx");
        }
        else
        {
            Response.Redirect("home.aspx");
        }
    }
}