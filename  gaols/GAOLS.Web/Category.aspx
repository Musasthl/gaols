<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
    DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" 
    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
    ForeColor="#333333" HorizontalAlign="Center" RepeatColumns="3" 
    RepeatDirection="Horizontal" Width="300px" GridLines="Both">
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
            Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
    <AlternatingItemStyle BackColor="White" />
    <ItemStyle BackColor="#EFF3FB" />
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <HeaderTemplate>
        <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("categ_id") %>'></asp:Label>
        &nbsp;Category
    </HeaderTemplate>
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
            Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" 
        Wrap="False" />
    <ItemTemplate>
        Picture:
        <asp:Label ID="PictureLabel" runat="server" Text='<%# Eval("Picture") %>' />
        <br />
        Description:
        <asp:Label ID="DescriptionLabel" runat="server" 
            Text='<%# Eval("Description") %>' />
        <br />
        Details:
        <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' />
        <br />
        UnitPrice:
        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
        <br />
        Category:
        <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:GAOLSConnectionString %>" 
    
    SelectCommand="SELECT [Picture], [Description], [Details], [UnitPrice], [Category] FROM [Inventory] WHERE ([Category] = @Category)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Category" QueryStringField="categ_id" 
            Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

