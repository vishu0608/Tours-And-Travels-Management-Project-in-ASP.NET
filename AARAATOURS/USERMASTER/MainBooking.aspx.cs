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
    public partial class WebForm5 : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        OleDbCommand cmd;
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataSet ds = new DataSet();
        int  ID1=0;

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Lenovo\Desktop\AARAATOURS\aaraadata.mdb";
            con.Open();

            //string str = "select max(BookingID) as BookingID from BookingTbl";
            //da = new OleDbDataAdapter(str, con);
            //da.Fill(ds);

            //ID1 = 1;
            //ID1 = int.Parse(ds.Tables[0].Rows[0]["BookingID"].ToString());
            //if (ID1 > 0)
            //{
            //    ID1++;
            //}
            //else
            //{
            //    ID1 = 1;
            //}
            //lbl_booking_id.Text = ID1.ToString();

        }

        protected void btn_Booling_submit_Click(object sender, EventArgs e)
        {
            try
            {
               
                string str = "insert into BookingTbl (BookingID,Place,Duration,Memberplan,Fullname) values(" + lbl_book_id.Text + ",'" + DropDownList_select_space.SelectedValue + "','" + DropDownList_Duration.SelectedValue + "','" + RadioButtonList_member.SelectedValue + "','" + txt_Fullname.Text + "')";
                cmd = new OleDbCommand(str, con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Booking Successfully')</script>");
            }
            catch(Exception ex)
            {

                Response.Write("<script>alert('FillAll Currect Details')</script>");
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        protected void LinkButton_signout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Redirect("../USERMASTER/Home.aspx");
        }
    }
}