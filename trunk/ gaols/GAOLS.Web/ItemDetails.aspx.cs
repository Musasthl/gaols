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
using GAOLS.DA;

public partial class Item : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        ShoppingCartManager scm = Session["cart"] as ShoppingCartManager;

        int itemNumber = int.Parse(Request.QueryString["item_num"].ToString());
        
        
        decimal price = decimal.Parse(((
            Label)DataList1.Controls[1].FindControl("UnitPriceLabel")).Text.Trim('P'));

        scm.Insert(itemNumber, price, 1, "", "");

        Response.Redirect(Request.UrlReferrer.ToString());
    }
}
