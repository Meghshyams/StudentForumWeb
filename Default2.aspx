<%@ Page Title="" Language="C#" MasterPageFile="~/ExpertMasterPage.master" AutoEventWireup="true" CodeFile="ExpertProfile.aspx.cs" Inherits="ExpertEditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="Edit Profile"></asp:Label>
                <hr size="3px" style="color: #0088CC" />

<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
    CellPadding="4" DataKeyNames="UserID" 
    DataSourceID="SqlEditProfile" GridLines="None" Height="64px" 
    Width="500px" ForeColor="#333333">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
    <EditRowStyle BackColor="#2461BF" />
    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" 
            SortExpression="UserID">
        <HeaderStyle Width="100px" />
        </asp:BoundField>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Address" HeaderText="Address" 
            SortExpression="Address" />
        <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
            SortExpression="EmailID" />
        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
            SortExpression="ContactNo" />
        <asp:BoundField DataField="College" HeaderText="College" 
            SortExpression="College" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="Branch" HeaderText="Branch" 
            SortExpression="Branch" />
        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
    </Fields>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlEditProfile" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [ExpertMaster] WHERE ([ExpertID] = @ExpertID)">
    <SelectParameters>
        <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
                <hr size="3px" style="color: #0088CC" />

</asp:Content>

