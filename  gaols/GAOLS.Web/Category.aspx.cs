using System;
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
    private static string name;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["categ_name"] != null)
            name = Request.QueryString["categ_name"].ToString();
    }

    public string GetCategoryName()
    {
        return "";
    }
}
