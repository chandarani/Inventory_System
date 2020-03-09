using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class CUSTOMER_ENTRY : System.Web.UI.Page
{
     OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
OracleDataAdapter adp=new OracleDataAdapter("select seq.nextVal from dual",con);
            DataSet ds=new DataSet();
            adp.Fill(ds);
            txtcust.Text=ds.Tables[0].Rows[0][0].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String cust_name = txtcust_name.Text;
        String cust_address = txtcust_add.Text;
        String cust_ph = txtcust_ph.Text;
        String email = txtemail.Text;
        String add_proof = txtadd_proof.Text;
        


        String mode_of_payment = "";
        if (rd1.Checked)
            mode_of_payment = "cash";
        if (rd2.Checked)
            mode_of_payment = "debit card";
        if (rd3.Checked)
            mode_of_payment = "others"; 

               
        OracleCommand cmd = new OracleCommand();
        cmd.Connection = con;

        cmd.CommandText = "insert into cus values('" + txtcust.Text + "','" + txtcust_name.Text + "','" + txtcust_add.Text+"','" + txtcust_ph.Text +"', '" + txtemail.Text + "','"+ txtadd_proof.Text+ "','" + mode_of_payment + "')";



        cmd.CommandType = CommandType.Text;

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("admin form.aspx");

    
    }
}