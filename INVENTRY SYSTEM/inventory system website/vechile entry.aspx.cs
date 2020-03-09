using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class vechile_entry : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("Data Source=xe;User ID=hr;pwd=hr;Unicode=True");


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            OracleDataAdapter adp = new OracleDataAdapter("select sequ.nextVal from dual", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            txtvech_id.Text = ds.Tables[0].Rows[0][0].ToString();


        }
    }
   

    protected void Button1_Click(object sender, EventArgs e)
    {
                String vechile_id= txtvech_id.Text;
                String color  = txtcolor.Text;
                String indicator = txtind.Text;
                String horn = txthorn.Text;
                String fuel_economy=txtfec.Text;
                String engine = txtengine.Text;
                String chassis = txtchas.Text;
                String wheel = txtwhl.Text;
                String fuel_tank = txtfuel.Text;
                String electricals = txtelec.Text;
                String suspension = txtsusp.Text;
                String brake = txtbrake.Text;
                String headlamp = txthdlp.Text;
                String transmission = txttrans.Text;
                String battery = txtbat.Text;
                String performance = txtperf.Text;
                String dimension = txtdimen.Text;
                String price = txtprice.Text;
                String model = txtmdl.Text;
                String brand = txtbrand.Text;       


        OracleCommand cmd = new OracleCommand();
        cmd.Connection = con;

        cmd.CommandText = "insert into vech values(" +txtvech_id.Text + ",'" +txtcolor.Text + "'," +txtind.Text + ","+txthorn.Text+","+txtfec.Text+","+txtengine.Text+","+txtchas.Text+","+txtwhl.Text+","+txtfuel.Text+",'"+txtelec.Text+"','"+txtsusp.Text+"',"+txtbrake.Text+","+txthdlp.Text+","+txttrans.Text+","+txtbat.Text+","+txtperf.Text+","+txtdimen.Text+","+txtprice.Text+",'"+txtmdl.Text+"','"+txtbrand.Text+"')";


        cmd.CommandType = CommandType.Text;

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("View.aspx");

    }
}