using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class Transaction : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //for drop down fill
            OracleDataAdapter adp1 = new OracleDataAdapter("select vechile_id,model from vech", con);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1);
            ddlmodel.DataSource = ds1;
            ddlmodel.DataValueField = "vechile_id";
            ddlmodel.DataTextField = "model";
            ddlmodel.DataBind();


            //seqence
            OracleDataAdapter adp = new OracleDataAdapter("select sequ.nextVal from dual", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            txtorder.Text = ds.Tables[0].Rows[0][0].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String ddno = txtddno.Text;
        String bank_name = txtbank_name.Text;
        String issue_date = txtissue_date.Text;

        String mode_of_payment = "";
       
        if (rd1.Checked)
        {
            
            mode_of_payment = "CASH";
        }
        if (rd2.Checked)
        {
            
            mode_of_payment = "DD/CHEQUE";
        }
        

        OracleCommand cmd = new OracleCommand();
        cmd.Connection = con;

        cmd.CommandText = "insert into transaction values('" + txtorder.Text + "','" + ddlmodel.SelectedValue.ToString() + "','" + txtcust_name.Text + "','" + txtcust_add.Text + "','" + txtphone.Text + "','" + mode_of_payment + "','" + txtddno.Text + "','" + txtbank_name.Text + "','" + txtissue_date.Text + "','" + txtcust_id.Text + "','"+ txtamount.Text +"')";



        cmd.CommandType = CommandType.Text;

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Admin form.aspx");

    }


    protected void rd1_CheckedChanged(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }
    protected void rd2_CheckedChanged(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }
}
