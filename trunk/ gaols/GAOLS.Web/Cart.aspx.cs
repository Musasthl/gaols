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

public partial class Cart : System.Web.UI.Page
{
    private ShoppingCartManager scm;
    private DataView CartView;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cart"] == null)
        {
            scm = new ShoppingCartManager();
            Session["cart"] = scm;
        }
        else
        {
            scm = Session["cart"] as ShoppingCartManager;
        }

        CartView = new DataView(scm.GetCart());

        if (!IsPostBack)
        {
            BindList();
        }
    }

    void BindList()
    {
        GridView1.DataSource = CartView;
        GridView1.DataBind();
    }
}
