<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CartControl.ascx.cs" Inherits="CartControl" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="ObjectDataSource1">
    <Columns>
        <asp:BoundField DataField="ItemNumber" HeaderText="ItemNumber" 
            SortExpression="ItemNumber" />
        <asp:BoundField DataField="Description" HeaderText="Description" 
            SortExpression="Description" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
            SortExpression="Quantity" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:BoundField DataField="Picture" HeaderText="Picture" 
            SortExpression="Picture" />
    </Columns>
</asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                SelectMethod="GetCart" TypeName="GAOLS.DA.ShoppingCartManager">
            </asp:ObjectDataSource>
        
