<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CartControl.ascx.cs" Inherits="CartControl" %>
<asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
    oncancelcommand="DataList1_CancelCommand" 
    oneditcommand="DataList1_EditCommand1" 
    onupdatecommand="DataList1_UpdateCommand">
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <AlternatingItemStyle BackColor="White" />
    <ItemStyle BackColor="#EFF3FB" />
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderTemplate>
        Items
    </HeaderTemplate>
    <ItemTemplate>
        <asp:LinkButton id="button1" runat="server" Text="Edit" CommandName="edit" />
        &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
        <%#DataBinder.Eval(Container.DataItem,"Description") %>
    </ItemTemplate>
    <EditItemTemplate>
                Item:
                <asp:Label id="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Description")  %>' />
                <br>
                Quantity:
                <asp:TextBox id="Text1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Quantity")  %>' />
                <br>
                Price:
                <asp:TextBox id="Text2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Price") %>' />
                <br>
                <asp:LinkButton id="button2" runat="server" Text="Update" CommandName="update" />
                <asp:LinkButton id="button3" runat="server" Text="Cancel" CommandName="cancel" />
                </EditItemTemplate>
</asp:DataList>


        
