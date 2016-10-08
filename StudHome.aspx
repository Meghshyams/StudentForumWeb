<%@ Page Title="" Language="C#" MasterPageFile="~/StudMasterPage.master" AutoEventWireup="true" CodeFile="StudHome.aspx.cs" Inherits="StudHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="Profile" Font-Bold="True"></asp:Label>
        <hr size="3px" style="color: #0088CC" />
<br />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
    DataKeyNames="UserID" DataSourceID="SqlProfile" GridLines="None" 
    Height="50px" Width="500px" 
    CellPadding="4" ForeColor="#333333">
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
        <asp:BoundField DataField="Gender" HeaderText="Gender" 
            SortExpression="Gender" />
    </Fields>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlProfile" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [UserID], [Name], [Address], [EmailID], [ContactNo], [College], [City], [Branch], [Gender] FROM [UserMaster] WHERE ([UserID] = @UserID)">
    <SelectParameters>
        <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<hr size="3px" style="color: #0088CC" />
</asp:Content>

