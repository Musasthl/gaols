﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string category = Request.QueryString["categ_id"];

        if (category != "" || category != null)
        {
            //Label lblCategory = DataList1.;

            //lblCategory.Text = category;
        }
    }
}