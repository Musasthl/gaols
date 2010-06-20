<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CartControl.ascx.cs" Inherits="CartControl" %>
<asp:DataList ID="DataList1" runat="server" CellPadding="4" 
    DataSourceID="ObjectDataSource1" ForeColor="#333333" RepeatColumns="1" 
    RepeatDirection="Horizontal">
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <AlternatingItemStyle BackColor="White" />
    <ItemStyle BackColor="#EFF3FB" />
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <ItemTemplate>
        ItemNumber:
        <asp:Label ID="ItemNumberLabel" runat="server" 
            Text='<%# Eval("ItemNumber") %>' />
        <br />
        Description:
        <asp:Label ID="DescriptionLabel" runat="server" 
            Text='<%# Eval("Description") %>' />
        <br />
        Quantity:
        <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
        <br />
        Price:
        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
        <br />
        Picture:
        <asp:Label ID="PictureLabel" runat="server" Text='<%# Eval("Picture") %>' />
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                SelectMethod="GetCart" TypeName="GAOLS.DA.ShoppingCartManager">
            </asp:ObjectDataSource>
        
