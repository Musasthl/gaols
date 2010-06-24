<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="1" 
    DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" 
    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
    ForeColor="#333333" HorizontalAlign="Center" RepeatColumns="3" 
    RepeatDirection="Horizontal" Width="300px" GridLines="Both" 
    ShowFooter="False" style="font-size: small">
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
            <asp:Label ID="lblCategory" runat="server" 
            Text='<%# Request.QueryString["categ_name"] %>' 
            style="font-size: small;"></asp:Label>
        </HeaderTemplate>
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
            Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" 
        Wrap="False" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="130px" Width="130px" />
            <br />
            <asp:LinkButton ID="DescriptionLabel" runat="server" 
            Text='<%# Eval("Description") %>' 
            PostBackUrl='<%# Eval("ItemNumber","ItemDetails.aspx?item_num={0}") %>'></asp:LinkButton>
            <br />
            <asp:Label ID="UnitPriceLabel" runat="server" 
            Text='<%# Eval("UnitPrice","P {0:n2}") %>' style="color: #FF0000" />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:GAOLSConnectionString2 %>" 
    
    
        SelectCommand="SELECT * FROM [Inventory] WHERE (([Description] LIKE '%' + @Description + '%') AND ([Category] = @Category))" 
        
        
        
        
        ProviderName="<%$ ConnectionStrings:GAOLSConnectionString2.ProviderName %>">
        <SelectParameters>
            <asp:QueryStringParameter Name="Description" QueryStringField="desc" 
            Type="String" />
            <asp:QueryStringParameter Name="Category" QueryStringField="categ_id" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

