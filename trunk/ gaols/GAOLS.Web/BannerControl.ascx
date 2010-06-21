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
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/web1.png" />
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/web2.png" />
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
