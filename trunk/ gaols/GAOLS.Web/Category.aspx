<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
    DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" 
    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
    ForeColor="#333333" HorizontalAlign="Center" RepeatColumns="3" 
    RepeatDirection="Horizontal">
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <AlternatingItemStyle BackColor="White" />
    <ItemStyle BackColor="#EFF3FB" />
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <ItemTemplate>
        Picture:
        <asp:Label ID="PictureLabel" runat="server" Text='<%# Eval("Picture") %>' />
        <br />
        Description:
        <asp:Label ID="DescriptionLabel" runat="server" 
            Text='<%# Eval("Description") %>' />
        <br />
        UnitPrice:
        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:GAOLSConnectionString %>" 
    SelectCommand="SELECT [Picture], [Description], [UnitPrice] FROM [Inventory] WHERE ([Category] = @Category)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Category" QueryStringField="categ" 
            Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

