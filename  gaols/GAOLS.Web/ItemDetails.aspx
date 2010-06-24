<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ItemDetails.aspx.cs" Inherits="Item" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
        DataKeyField="ItemNumber" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        RepeatColumns="1" Width="329px">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingItemStyle BackColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderTemplate>
            <asp:Label ID="Label1" runat="server" Text="Item Details"></asp:Label>
        </HeaderTemplate>
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td rowspan="2">
                        <asp:ImageButton ID="picture" runat="server" Height="200px" 
                            ImageUrl='<%# Eval("Picture") %>' Width="200px" />
                    </td>
                    <td align="left" valign="top" style="height: 5px" >
                        <asp:Label ID="DescriptionLabel" runat="server" style="font-size: x-large" 
                            Text='<%# Eval("Description") %>' />
                        <br />
                        <asp:Label ID="UnitPriceLabel" runat="server" CssClass="style5" 
                            style="color: #FF0000" Text='<%# Eval("UnitPrice","P {0:n2}") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top" style="height: 100px">
                        <asp:Label ID="DetailsLabel" runat="server" CssClass="style5" 
                            Text='<%# Eval("Details") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:GAOLSConnectionString2 %>" 
        
    SelectCommand="SELECT * FROM [Inventory] WHERE ([ItemNumber] = @ItemNumber)" 
    ProviderName="<%$ ConnectionStrings:GAOLSConnectionString2.ProviderName %>">
        <SelectParameters>
            <asp:QueryStringParameter Name="ItemNumber" QueryStringField="item_num" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:LinkButton ID="btnAddToCart" runat="server" onclick="btnAddToCart_Click">Add To Cart</asp:LinkButton>
    </asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style5
        {
            font-size: small;
        }
    </style>

</asp:Content>


