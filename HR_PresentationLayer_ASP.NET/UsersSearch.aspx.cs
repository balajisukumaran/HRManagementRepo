﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR_PresentationLayer_ASP.NET
{
    public partial class UsersSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }


        protected void ddUserName_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            ddUserName.DataSourceID = "SqlDataSource2";
        }
    }
}