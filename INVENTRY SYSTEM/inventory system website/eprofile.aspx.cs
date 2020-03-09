using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
public partial class eprofile : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Response.Redirect("login.aspx");
        if (!IsPostBack)
        {
            string uid = Session["uid"].ToString();
            OracleDataAdapter adp = new OracleDataAdapter("select * from reg where email='" + uid + "'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtfn.Text = ds.Tables[0].Rows[0]["fname"].ToString();
                txtln.Text = ds.Tables[0].Rows[0]["lname"].ToString();
                String city = ds.Tables[0].Rows[0]["city"].ToString();
                String gen = ds.Tables[0].Rows[0]["gen"].ToString();
               
                if (gen == "male")
                    rd1.Checked = true;
                if (gen == "female")
                    rd2.Checked = true;
                ddlcity.SelectedValue = city;
            }
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        OracleCommand cmd = new OracleCommand();
        cmd.Connection = con;
        string gen = "";
        if (rd1.Checked)
            gen = "male";
        if (rd2.Checked)
            gen = "female";
        cmd.CommandText = "update reg set fname='" + txtfn.Text + "',lname='" + txtln.Text + "',gen='" + gen + "',city='" + ddlcity.SelectedValue.ToString() + "' where email='" + Session["uid"].ToString()+"'";
        cmd.CommandType = CommandType.Text;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("vprofile.aspx");

    }
}