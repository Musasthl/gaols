<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="1" 
    DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" 
    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
    ForeColor="#333333" HorizontalAlign="Center" RepeatColumns="3" 
    RepeatDirection="Horizontal" Width="300px" GridLines="Both" ShowFooter="False">
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
            Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
        <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
    <AlternatingItemStyle BackColor="White" Font-Bold="False" Font-Italic="False" 
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
            HorizontalAlign="Center" VerticalAlign="Middle" />
    <ItemStyle BackColor="#EFF3FB" Font-Bold="False" Font-Italic="False" 
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
            HorizontalAlign="Center" VerticalAlign="Middle" />
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" 
            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
            Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
    <HeaderTemplate>
        <asp:Label ID="lblCategory" runat="server" Text='<%# GetCategoryName(Request.QueryString["name"]) %>'></asp:Label>
    </HeaderTemplate>
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
            Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" 
        Wrap="False" />
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" Height="130px" Width="130px" />
        <br />
        <asp:Label ID="DescriptionLabel" runat="server" 
            Text='<%# Eval("Description") %>' />
        <br />
        UnitPrice:
        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server">View</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server">Add to Cart</asp:LinkButton>
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:GAOLSConnectionString2 %>" 
    
    
        SelectCommand="SELECT [Picture], [Description], [Details], [UnitPrice], [Category] FROM [Inventory] WHERE ([Category] = @Category)" 
        
        ProviderName="<%$ ConnectionStrings:GAOLSConnectionString2.ProviderName %>">
    <SelectParameters>
        <asp:QueryStringParameter Name="Category" QueryStringField="categ_id" 
            Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

