﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["mone"] == null)
            {
                Application["mone"] = 0;
            }
            else
            {
                Application["mone"] = (int)Application["mone"] + 1;

            }
        }
    }
}