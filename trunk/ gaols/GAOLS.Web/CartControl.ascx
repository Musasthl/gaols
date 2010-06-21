<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CartControl.ascx.cs" Inherits="CartControl" %>
<asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
    oncancelcommand="DataList1_CancelCommand" 
    oneditcommand="DataList1_EditCommand" 
    onupdatecommand="DataList1_UpdateCommand" Width="200px" 
    ondeletecommand="DataList1_DeleteCommand">
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <AlternatingItemStyle BackColor="White" />
    <ItemStyle BackColor="#EFF3FB" />
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
        Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
        Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
    <HeaderTemplate>
        Cart
    </HeaderTemplate>
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" Height="79px" Width="85px" />
        <br />
        <asp:Label ID="lblDescription1" runat="server"></asp:Label>
        <%#DataBinder.Eval(Container.DataItem,"Description") %>
        <br>
        Price:
        <asp:Label id="lblPrice" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Price") %>' />
        <br>
        Quantity:
        <asp:Label id="lblQuantity" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Quantity")  %>' />
        <br>
        Subtotal:
        <asp:Label id="lblSubTotal" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "SubTotal") %>' />
        <br />
        <asp:LinkButton ID="button1" runat="server" CommandName="edit" Text="Edit" />
        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete" Text="Remove" />
        <br>
        
        </ItemTemplate>
    <EditItemTemplate>
                Item:
                <asp:Label id="lblDescription2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Description")  %>' />
                <br>
                Price:
                <asp:Label id="lblPrice" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Price") %>' />
                <br>
                Quantity:
                <asp:TextBox ID="txtQuantity" runat="server" 
                    Text='<%# DataBinder.Eval(Container.DataItem, "Quantity")  %>' />
                <br>
                <asp:LinkButton ID="button2" runat="server" CommandName="update" 
                    Text="Update" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="button3" runat="server" CommandName="cancel" 
                    Text="Cancel" />
                </EditItemTemplate>
</asp:DataList>


        
