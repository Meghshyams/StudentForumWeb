<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master" AutoEventWireup="true" CodeFile="AdminExpertList.aspx.cs" Inherits="AdminExpertList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="Expert List"></asp:Label>
    <hr size="3px" style="color: #0088CC" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" CellSpacing="3" 
    DataKeyNames="ExpertID" DataSourceID="SqlExpertList">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True"  HeaderStyle-Width="120"
                ShowEditButton="True" />
            <asp:BoundField DataField="ExpertID" HeaderText="ExpertID" ReadOnly="True" 
                SortExpression="ExpertID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                SortExpression="EmailID" />
            <asp:BoundField DataField="Qualification" HeaderText="Qualification" 
                SortExpression="Qualification" />
            <asp:BoundField DataField="Expertise" HeaderText="Expertise" 
                SortExpression="Expertise" />
        </Columns>
        <HeaderStyle ForeColor="#006699" />
</asp:GridView>
<asp:SqlDataSource ID="SqlExpertList" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [ExpertMaster] WHERE [ExpertID] = @ExpertID" 
    InsertCommand="INSERT INTO [ExpertMaster] ([ExpertID], [Name], [EmailID], [Qualification], [Expertise]) VALUES (@ExpertID, @Name, @EmailID, @Qualification, @Expertise)" 
    SelectCommand="SELECT [ExpertID], [Name], [EmailID], [Qualification], [Expertise] FROM [ExpertMaster]" 
    UpdateCommand="UPDATE [ExpertMaster] SET [Name] = @Name, [EmailID] = @EmailID, [Qualification] = @Qualification, [Expertise] = @Expertise WHERE [ExpertID] = @ExpertID">
    <DeleteParameters>
        <asp:Parameter Name="ExpertID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ExpertID" Type="String" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="EmailID" Type="String" />
        <asp:Parameter Name="Qualification" Type="String" />
        <asp:Parameter Name="Expertise" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="EmailID" Type="String" />
        <asp:Parameter Name="Qualification" Type="String" />
        <asp:Parameter Name="Expertise" Type="String" />
        <asp:Parameter Name="ExpertID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <hr size="3px" style="color: #0088CC" />
</asp:Content>

