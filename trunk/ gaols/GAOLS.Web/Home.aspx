<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <table style="width:100%;">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:LoginView ID="LoginView1" runat="server">
                <LoggedInTemplate>
                    <asp:Label ID="Label1" runat="server" Text="G&amp;A Online Shopping -"></asp:Label>
                    &nbsp;<asp:LoginName ID="LoginName1" runat="server" />
                </LoggedInTemplate>
                <AnonymousTemplate>
                    <asp:Label ID="Label1" runat="server" 
    Text="Welcome to G&amp;A Online Shopping - HOME"></asp:Label>
                </AnonymousTemplate>
            </asp:LoginView>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
<br />
</asp:Content>

