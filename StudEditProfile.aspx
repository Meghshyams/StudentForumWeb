<%@ Page Title="" Language="C#" MasterPageFile="~/StudMasterPage.master" AutoEventWireup="true" CodeFile="StudEditProfile.aspx.cs" Inherits="StudEditProfile" %>

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
    DeleteCommand="DELETE FROM [UserMaster] WHERE [UserID] = @UserID" 
    InsertCommand="INSERT INTO [UserMaster] ([UserID], [Name], [Address], [EmailID], [ContactNo], [College], [City], [Branch]) VALUES (@UserID, @Name, @Address, @EmailID, @ContactNo, @College, @City, @Branch)" 
    SelectCommand="SELECT [UserID], [Name], [Address], [EmailID], [ContactNo], [College], [City], [Branch] FROM [UserMaster] WHERE ([UserID] = @UserID)" 
    UpdateCommand="UPDATE [UserMaster] SET [Name] = @Name, [Address] = @Address, [EmailID] = @EmailID, [ContactNo] = @ContactNo, [College] = @College, [City] = @City, [Branch] = @Branch WHERE [UserID] = @UserID">
    <DeleteParameters>
        <asp:Parameter Name="UserID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UserID" Type="String" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="EmailID" Type="String" />
        <asp:Parameter Name="ContactNo" Type="String" />
        <asp:Parameter Name="College" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Branch" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="EmailID" Type="String" />
        <asp:Parameter Name="ContactNo" Type="String" />
        <asp:Parameter Name="College" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Branch" Type="String" />
        <asp:Parameter Name="UserID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
                <hr size="3px" style="color: #0088CC" />

</asp:Content>

