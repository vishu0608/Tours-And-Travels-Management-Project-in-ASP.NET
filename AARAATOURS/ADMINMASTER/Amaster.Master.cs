using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AARAATOURS.ADMINMASTER
{
    public partial class Amaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["Admin"] == null)
            //{
            //    Response.Redirect("~/USERMASTER/Home.aspx");
            //}
            //else
            //{
            //}
        }

        protected void btn_Aara_Admin_logout_Click(object sender, EventArgs e)
        {
            try
            {
                //Session["Admin"] = null;
                Response.Redirect("../USERMASTER/Home.aspx");
            }
            catch
            {

            }
        }
    }
}