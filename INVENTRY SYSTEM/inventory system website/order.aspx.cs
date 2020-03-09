using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtsubmit_Click(object sender, EventArgs e)
    {

        OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");
        OracleDataAdapter adp = new OracleDataAdapter("select * from transaction where ordr =" + txtky.Text + "", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["ky"] = ds.Tables[0].Rows[0]["ordr"].ToString();
            Response.Redirect("View transaction.aspx");
        }
        else
        {
            Response.Write("invalid order number");
        }
    }
    protected void txtview_Click(object sender, EventArgs e)
    {

        OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");

        OracleDataAdapter adp = new OracleDataAdapter("select ordr,cust_id,model,cust_name,cust_add,phone,mode_of_payment,ddno,bank_name,issue_date,amount from transaction", con);
        DataSet ds = new DataSet();

        adp.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
}