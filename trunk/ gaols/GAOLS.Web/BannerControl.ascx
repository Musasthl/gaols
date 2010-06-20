<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BannerControl.ascx.cs" Inherits="BannerControl" %>
<table style="width: 100%;">
    <tr>
        <td colspan="2" rowspan="2">
            <asp:Image ID="Image1" runat="server" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
