<%@ Page Title="" Language="C#" MasterPageFile="~/StudMasterPage.master" AutoEventWireup="true" CodeFile="StudShowNotes.aspx.cs" Inherits="StudShowNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="Notes"></asp:Label>
    <hr size="3px" style="color: #0088CC" />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="DocID" DataSourceID="SqlNotes" Height="50px" Width="600px">
        <Fields>
            <asp:BoundField DataField="DocID" HeaderText="DocID" InsertVisible="False" 
                ReadOnly="True" SortExpression="DocID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="FileName" HeaderText="FileName" 
                SortExpression="FileName" />
            <asp:BoundField DataField="Summery" HeaderText="Summery" 
                SortExpression="Summery" />
            <asp:BoundField DataField="Owner" HeaderText="Owner" SortExpression="Owner" />
            <asp:BoundField DataField="UploadDate" HeaderText="UploadDate" 
                SortExpression="UploadDate" />
            <asp:BoundField DataField="HitCount" HeaderText="HitCount" 
                SortExpression="HitCount" />
        </Fields>
    </asp:DetailsView>
    <asp:HyperLink ID="btnView" runat="server" ImageUrl="~/Images/view.jpg" 
        Target="mmm" ToolTip="Click to View">HyperLink</asp:HyperLink>
&nbsp;<asp:HyperLink ID="btnDownLoad" runat="server" 
        ImageUrl="~/Images/download.jpg" Target="mmm" ToolTip="Right Click to Download">HyperLink</asp:HyperLink>
    <asp:SqlDataSource ID="SqlNotes" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [DocID], [Title], [FileName], [Summery], [Owner], [UploadDate], [HitCount] FROM [Documents] WHERE ([DocID] = @DocID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="DocID" QueryStringField="docid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <hr size="3px" style="color: #0088CC" />
    <hr size="3px" style="color: #0088CC" />
</asp:Content>

