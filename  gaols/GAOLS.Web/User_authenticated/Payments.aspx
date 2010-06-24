<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Payments.aspx.cs" Inherits="Payments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Enter Tender Amount: "></asp:Label>
    <asp:TextBox ID="txtTenderAmount" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Submit" />
</asp:Content>

