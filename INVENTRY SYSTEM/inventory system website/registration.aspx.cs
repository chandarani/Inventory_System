using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        String fname = txtfname.Text;
        String lname = txtlname.Text;




        String gen = "";
        if (rd1.Checked)
            gen = "male";
        if (rd2.Checked)
            gen = "Female";



        String city = ddlcity.SelectedValue.ToString();

        OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");

        OracleCommand cmd = new OracleCommand();
        cmd.Connection = con;

        cmd.CommandText = "insert into reg values('" + txtfname.Text + "','" + txtlname.Text + "','" + gen + "','" + ddlcity.SelectedValue.ToString() + "','" + txtemail.Text + "','" + txtpass.Text + "')";



        cmd.CommandType = CommandType.Text;

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("sucessfully registered");

    }
}