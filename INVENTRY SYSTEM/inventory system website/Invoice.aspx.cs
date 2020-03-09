using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class Invoice : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            OracleDataAdapter adp = new OracleDataAdapter("select seq.nextVal from dual", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

     


        }
    }
    protected void inv_Click(object sender, EventArgs e)
    {
        OracleCommand cmd = new OracleCommand();
        cmd.Connection = con;

        cmd.CommandText = "insert into invoice values('" +txtms.Text + "','" + txtdof.Text + "','" + txtaddp.Text + "','" +txtaddt.Text+ "'," + txtcon.Text + "," + txtinvno.Text + ",'" + txtinvdat.Text + "','" +txtcolv.Text + "'," + txtchassis.Text + "," + txtengn.Text+ "," + txtreg.Text + "," + txtkeyn.Text + "," + txtbatn.Text + ","+txtsale.Text+","+txtamou.Text+",'"+txtcsig.Text+"','"+txtasig.Text+"')";


        cmd.CommandType = CommandType.Text;

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Session["txtinvno"] = txtinvno.Text;
        Response.Redirect("prinv.aspx");
    }
}