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
    public partial class WebForm9 : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\AARAATOURS\aaraadata.mdb");
        OleDbCommand cmd;
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_contact_submit_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();


                


                string str1 = "insert into ContactTbl (fname,femail,fmsg) values ('"+txt_name.Text+"','"+txt_email.Text+"','"+txt_msg.Text+"')";
                cmd = new OleDbCommand(str1, con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Feedback Send Successfully')</script>");
            }
            catch(Exception ex1)
            {
                Response.Write("<script>alert('Fill All Details')</script>");
                Response.Write(ex1.ToString());
            }
            finally
            {

            }
        }
    }
}