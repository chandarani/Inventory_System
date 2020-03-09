using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
public partial class COMPLAINT : System.Web.UI.Page
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

            OracleDataAdapter adp = new OracleDataAdapter("select trans.nextVal from dual", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            txtcmid.Text = ds.Tables[0].Rows[0][0].ToString();


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String name = txtname.Text;
        String addr = txtaddr.Text;
        String com_date = txtcom_date.Text;
        String pur_date = txtpur_date.Text;
        String billno = txtbillno.Text;
        String com = txtcom.Text;

        OracleCommand cmd = new OracleCommand();
        cmd.Connection = con;

        cmd.CommandText = "insert into comp values('" + txtcmid.Text + "','" + txtname.Text + "','" + txtaddr.Text + "','" + ddlcity.SelectedValue.ToString() + "','" + txtcom_date.Text + "','" + txtpur_date.Text + "','" + txtbillno.Text + "','" + ddlmodel.SelectedValue.ToString() + "','" + txtcom.Text + "')";



        cmd.CommandType = CommandType.Text;

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Admin form.aspx");
    }
}