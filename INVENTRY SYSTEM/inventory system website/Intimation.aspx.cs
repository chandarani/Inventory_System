using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class Intimation : System.Web.UI.Page
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
    protected void submit_Click(object sender, EventArgs e)
    {

        OracleCommand cmd = new OracleCommand();
        cmd.Connection = con;

        cmd.CommandText = "insert into inti values('" + txtnam.Text + "','" + txtfath.Text + "','" + txtpadd.Text + "'," + txtmob.Text + ",'" + txtmod.Text + "','" + txtcol.Text + "'," + txteng.Text + "," + txtchas.Text + "," + txtkey.Text + "," + txtcash.Text + ",'" + txtsale.Text + "'," + txtpri.Text + "," + txttot.Text + ")";


        cmd.CommandType = CommandType.Text;

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Session["txtkey"] = txtkey.Text;
        Response.Redirect("View.aspx");

    }
}