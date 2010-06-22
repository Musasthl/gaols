<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CategoryControl.ascx.cs" Inherits="CategoryControl" %>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" CellPadding="4" 
    ForeColor="#333333" Width="200px" 
    DataKeyNames="CategoryId">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" ReadOnly="True" 
                        SortExpression="CategoryId" Visible="False" />
                    <asp:HyperLinkField DataTextField="Name" HeaderText="Categories" 
                        SortExpression="Name" DataNavigateUrlFields="CategoryId,Name" 
                        DataNavigateUrlFormatString="Category.aspx?categ_id={0}&name={1}">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:HyperLinkField>
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:GAOLSConnectionString %>" 
                SelectCommand="SELECT * FROM [Category]" 
    ProviderName="<%$ ConnectionStrings:GAOLSConnectionString.ProviderName %>"></asp:SqlDataSource>
        
