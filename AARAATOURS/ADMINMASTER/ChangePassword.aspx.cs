using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;


namespace AARAATOURS.ADMINMASTER
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        OleDbCommand cmd;
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataSet ds = new DataSet();
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Lenovo\Desktop\AARAATOURS\aaraadata.mdb";
            con.Open();
        }

        protected void LinkButton_AAlogin_cpass_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("../USERMASTER/Login.aspx");
            }
            catch
            {

            }
        }

        protected void btn_AAChange_pass_Click(object sender, EventArgs e)
        {
            try
            {
                string str1 = "select email, mobile from AdminTbl where email='"+txt_Achangepass_email.Text+"' and mobile='"+txt_Achangepass_mobile.Text+"'";
                da = new OleDbDataAdapter(str1, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count > 0)
                {
                    str = "update Adminrbl set pass='"+txt_Achangepass_newpass.Text+"' where mobile='"+txt_Achangepass_mobile.Text+"' and pass='"+txt_Achnagepass_oldpass.Text+"'";
                    cmd = new OleDbCommand(str, con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Change Password Successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Please Try Again')</script>");
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