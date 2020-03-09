using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class vprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Response.Redirect("login.aspx");
        string uid = Session["uid"].ToString();
        OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");
        OracleDataAdapter adp = new OracleDataAdapter("select * from reg where email='" + uid + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblfn.Text = ds.Tables[0].Rows[0]["fname"].ToString();
            lblln.Text = ds.Tables[0].Rows[0]["lname"].ToString();
            lblemail.Text = ds.Tables[0].Rows[0]["email"].ToString();
            lblcity.Text = ds.Tables[0].Rows[0]["city"].ToString();
            lblgen.Text = ds.Tables[0].Rows[0]["gen"].ToString();
        }
    }
}