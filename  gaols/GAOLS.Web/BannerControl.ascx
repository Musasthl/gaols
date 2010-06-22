<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    
    <link href="~css/ui-lightness/jquery-ui-1.7.3.custom.css" rel="stylesheet" 
        type="text/css" />
    <link href="~css/main.css" rel="stylesheet" 
        type="text/css" />
        
</head>
<body>
</body>
</html>



<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BannerControl.ascx.cs" Inherits="BannerControl" %>
<style type="text/css">
    .style1
    {
        width: 100%;
        height: 14px;
    }
    .style4
    {
        width: 624px;
    }
</style>
<table class="style1">
    <tr>
        
        <div id="WebBanner">
            
            <div class="current">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Untitled-1 copy.jpg" />
            </div>
            
            <div>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Untitled-2 copy.jpg" />
            </div>
            
            <div>
            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Untitled-3 copy.jpg" />
            </div>
            
            
            </div>
        
    </tr>
    <tr>
        <td colspan="1" class="style4">
            </td>
        <td align="right">
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </td>
    </tr>
    <tr>
        <td align="left">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
        &nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Cart.aspx">Cart</asp:LinkButton>
        </td>
        <td align="right" class="style2">
            <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CategoryId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:GAOLSConnectionString %>" 
                SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" />
        </td>
    </tr>
</table>
