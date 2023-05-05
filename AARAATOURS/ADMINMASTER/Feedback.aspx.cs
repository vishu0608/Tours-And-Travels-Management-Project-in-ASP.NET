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
    public partial class WebForm4 : System.Web.UI.Page
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


            if (!IsPostBack)
            {
                bind_feedback();
            }
        }

        void bind_feedback()
        {
            str = "select * from ContactTbl ";
            da = new OleDbDataAdapter(str, con);
            da.Fill(ds);

            FeedbackGV.DataSource = ds;
            FeedbackGV.DataBind();
        }

        protected void FeedbackGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            bind_feedback();
        }

        protected void FeedbackGV_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            FeedbackGV.EditIndex = e.NewPageIndex;
            bind_feedback();
        }
    }
}