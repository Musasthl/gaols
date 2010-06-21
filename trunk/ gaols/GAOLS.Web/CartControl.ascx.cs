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

public partial class CartControl : System.Web.UI.UserControl
{
    private ShoppingCartManager scm;
    private DataView CartView;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cart"] == null)
        {
            scm = new ShoppingCartManager();
            Session["cart"] = scm;
            scm.Insert(1, 1, 2, "item1", "");
            scm.Insert(3, 2, 1, "item2", "");
        }
        else
            scm = Session["cart"] as ShoppingCartManager;

        CartView = new DataView(scm.GetCart());

        if (!IsPostBack)
        {
            BindList();
        }
    }

    void BindList()
    {
        DataList1.DataSource = CartView;
        DataList1.DataBind();
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        
    }
    protected void DataList1_EditCommand1(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
        BindList();
    }
    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = -1;
        BindList();
    }
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        Label itemLabel = e.Item.FindControl("lblDescription2") as System.Web.UI.WebControls.Label;
        TextBox qtyText = e.Item.FindControl("txtQuantity") as System.Web.UI.WebControls.TextBox;
        Label priceText = e.Item.FindControl("lblPrice") as System.Web.UI.WebControls.Label;
        
        string item = itemLabel.Text;
        string qty = qtyText.Text;
        string price = priceText.Text;

        foreach (DataRow row in CartView.Table.Rows)
        {
            if (row["Description"].ToString() == item)
            {
                ManagerDS.ShoppingCartRow dr = row as ManagerDS.ShoppingCartRow;
                dr.Quantity = decimal.Parse(qty);
                dr.Description = item;
                dr.Price = decimal.Parse(price);
                dr.SubTotal = dr.Price * dr.Quantity;
            }
        }

        DataList1.EditItemIndex = -1;
        BindList();
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        
    }
}
