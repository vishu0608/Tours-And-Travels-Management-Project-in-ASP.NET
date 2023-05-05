using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace AARAATOURS.USERMASTER
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        OleDbCommand cmd;
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataSet ds = new DataSet();
        string str;
        int id1 = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Provider = Microsoft.Jet.OLEDB.4.0; Data Source = D:\AARAATOURS\aaraadata.mdb";
            con.Open();


            str = "select max(UserID) as UserID from UserTbl";
           
            da = new OleDbDataAdapter(str, con);
            da.Fill(ds);

            id1 = 1;
         
            id1 = int.Parse(ds.Tables[0].Rows[0]["UserID"].ToString());
            if (id1 > 0)
            {
                id1++;
            }
            else
            {
                id1 = 1;
            }
            lbl_u_id.Text = id1.ToString();
            //  lbl_signup_id.Text = id1.ToString();

        }

        protected void LinkButton_login_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Login.aspx");
            }
            catch
            {

            }
        }

        protected void btn_submit_user_Click(object sender, EventArgs e)
        {
            try
            {

                 str = "insert into UserTbl values("+lbl_u_id.Text+",'"+txt_user_name.Text+"','"+txt_user_mobile.Text+"','"+txt_user_email.Text+"','"+txt_Confirm_pass.Text+"')";
                cmd = new OleDbCommand(str, con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Registration Successfully')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("Fill All Details");
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }
    }
}