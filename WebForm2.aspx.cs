using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["Send"] != null)
            {
                Update();
            }
        }
        public void Update()
        {
            string sql = "INSERT INTO [table2] ([fname], [txtEmail], [pass], [txtphone]) VALUES(N'" + Request.Form["fname"] + "', N'" + Request.Form["txtEmail"] + "', N'" + Request.Form["pass"] + "/" + Request.Form["txtphone"]  + "')";
            Database.UpdateData(sql);
            Response.Redirect("Default.aspx");
        }
    }
}