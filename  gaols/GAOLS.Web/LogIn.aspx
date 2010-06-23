<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="SignIn" %>

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
                    <span class="input">You are logged in. Welcome, </span>
                </LoggedInTemplate>
                <AnonymousTemplate>
                    <span class="input">You are not logged in. Click the 
Login link to sign in.</span>
                </AnonymousTemplate>
            </asp:LoginView>
            <asp:LoginName ID="LoginName1" runat="server" />
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
</asp:Content>

