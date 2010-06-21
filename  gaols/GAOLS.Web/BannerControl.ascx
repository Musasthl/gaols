<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <title></title>
    
    <link href="~css/ui-lightness/jquery-ui-1.7.3.custom.css" rel="stylesheet" 
        type="text/css" />
    <link href="~css/main.css" rel="stylesheet" 
        type="text/css" />
        

</html>



<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BannerControl.ascx.cs" Inherits="BannerControl" %>
<style type="text/css">
    .style1
    {
        width: 100%;
        height: 92px;
    }
    .style2
    {
        height: 65px;
    }
    .style3
    {
        height: 19px;
    }
</style>
<table class="style1">
    <tr>
        <td colspan="3" class="style2">
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
        </td>
    </tr>
    <tr>
        <td colspan="2" class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
        </td>
        <td class="style3">
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Cart.aspx">Cart</asp:LinkButton>
        </td>
        <td class="style3">
            &nbsp;</td>
    </tr>
</table>
