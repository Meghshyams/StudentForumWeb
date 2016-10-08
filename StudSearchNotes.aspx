<%@ Page Title="" Language="C#" MasterPageFile="~/StudMasterPage.master" AutoEventWireup="true" CodeFile="StudSearchNotes.aspx.cs" Inherits="StudSearchNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="Search Notes"></asp:Label>
    <hr size="3px" style="color: #0088CC" />
    Subject
    <asp:TextBox ID="txtSearch" runat="server" Width="215px"></asp:TextBox>
&nbsp;<asp:Button ID="btnSearch" runat="server" Text="Search" 
        onclick="btnSearch_Click" />
&nbsp;<hr size="3px" style="color: #0088CC" />
    
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="DocID" DataSourceID="SqlNotes" 
    Width="700px" onselectedindexchanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:CommandField ButtonType="Button" ShowSelectButton="True">
        <HeaderStyle Width="60px" />
        </asp:CommandField>
        <asp:BoundField DataField="DocID" HeaderText="DocID" InsertVisible="False" 
            ReadOnly="True" SortExpression="DocID" Visible="False" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title">
        <HeaderStyle Width="200px" />
        </asp:BoundField>
        <asp:BoundField DataField="Summery" HeaderText="Summery" 
            SortExpression="Summery" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlNotes" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    
        SelectCommand="SELECT [DocID], [Title], [Summery] FROM [Documents] WHERE (([AccessType] = @AccessType) AND ([Title] LIKE '%' + @Title + '%') AND ([Summery] LIKE '%' + @Summery + '%') AND ([FileName] LIKE '%' + @FileName + '%')) ORDER BY [HitCount] DESC" 
        UpdateCommand="UPDATE Documents SET HitCount =HitCount+1 where docID=@docID">
    <SelectParameters>
        <asp:Parameter DefaultValue="public" Name="AccessType" Type="String" />
        <asp:ControlParameter ControlID="txtSearch" Name="Title" PropertyName="Text" 
            Type="String" />
        <asp:ControlParameter ControlID="txtSearch" Name="Summery" PropertyName="Text" 
            Type="String" />
        <asp:ControlParameter ControlID="txtSearch" Name="FileName" PropertyName="Text" 
            Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:ControlParameter ControlID="GridView1" Name="docID" 
            PropertyName="SelectedValue" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Arial" 
        ForeColor="Red"></asp:Label>
    <hr size="3px" style="color: #0088CC" />
    
</asp:Content>

