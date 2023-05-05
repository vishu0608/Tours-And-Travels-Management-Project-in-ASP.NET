using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;

namespace AARAATOURS.USERMASTER
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        OleDbCommand cmd;
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataSet ds = new DataSet();
        string str;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Provider = Microsoft.Jet.OLEDB.4.0; Data Source = D:\AARAATOURS\aaraadata.mdb";
            con.Open();
        }

        protected void LinkButton_login_cpass_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Login.aspx");
            }
            catch
            {

            }
        }

        protected void btn_Change_pass1_Click(object sender, EventArgs e)
        {
            try
            {
                string str1 = "select mobile,email from UserTbl where email='"+txt_changepass_email.Text+"' and mobile='"+txt_changepass_mobile.Text+"'";
                da = new OleDbDataAdapter(str1, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count > 0)
                {
                    str = "update UserTbl set password='" +txt_changepass_newpass.Text+ "' where mobile=" + txt_changepass_mobile.Text+ " and password='" + txt_chnagepass_oldpass.Text+ "'";
                    cmd = new OleDbCommand(str, con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Input Curect Values')</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }
    }
}