using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace AppHw271119
{
    public partial class Registration_form : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
        }

        public void BindData()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();

            grd.DataSource = dt;
            grd.DataBind();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("", con);
            cmd.ExecuteNonQuery();
            con.Close();

            BindData();
        }

        protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("", con);
            cmd.ExecuteNonQuery();
            con.Close();

            BindData();
        }
    }
}