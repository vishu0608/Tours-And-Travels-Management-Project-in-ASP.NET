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
    public partial class WebForm2 : System.Web.UI.Page
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


            if(!IsPostBack)
            {
                bind_userdata();
            }
        }

        void bind_userdata()
        {
            try
            {
                str = "select * from UserTbl";
                da = new OleDbDataAdapter(str, con);
                da.Fill(ds);

                UserGV.DataSource = ds;
                UserGV.DataBind();
            }
            catch
            {

            }
        }

        protected void UserGV_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void UserGV_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            UserGV.EditIndex = e.NewPageIndex;
            bind_userdata();
        }

        protected void UserGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            bind_userdata();
        }
    }
}