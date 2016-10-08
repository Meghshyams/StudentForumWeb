<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master" AutoEventWireup="true" CodeFile="AdminUploadBooks.aspx.cs" Inherits="Users_AdminUploadBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="Document Upload"></asp:Label>
    
    <hr size="3px" style="color: #0088CC" />
<table style="width: 100%;">
    <tr>
        <td>
            Document</td>
        <td>
            <asp:FileUpload ID="fuDoc" runat="server" Width="400px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="fuDoc" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Title</td>
        <td>
            <asp:TextBox ID="txtTitle" runat="server" Width="400px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtTitle" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Summery</td>
        <td>
            <asp:TextBox ID="txtSummery" runat="server" Rows="5" TextMode="MultiLine" 
                Width="400px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtSummery" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
                Text="Upload" />
        </td>
    </tr>
</table>
    
    <hr size="3px" style="color: #0088CC" />
<asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Courier New" 
    ForeColor="Red"></asp:Label>
<asp:SqlDataSource ID="sqlDoc" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [Documents] WHERE [DocID] = @DocID" 
    InsertCommand="INSERT INTO [Documents] ([Title], [FileName], [Summery], [Owner], [AccessType], [UploadDate], [HitCount]) VALUES (@Title, @FileName, @Summery, @Owner, @AccessType, @UploadDate, @HitCount)" 
    SelectCommand="SELECT * FROM [Documents]" 
    UpdateCommand="UPDATE [Documents] SET [Title] = @Title, [FileName] = @FileName, [Summery] = @Summery, [Owner] = @Owner, [AccessType] = @AccessType, [UploadDate] = @UploadDate, [HitCount] = @HitCount WHERE [DocID] = @DocID">
    <DeleteParameters>
        <asp:Parameter Name="DocID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="txtTitle" Name="Title" PropertyName="Text" 
            Type="String" />
        <asp:ControlParameter ControlID="fuDoc" Name="FileName" PropertyName="FileName" 
            Type="String" />
        <asp:ControlParameter ControlID="txtSummery" Name="Summery" PropertyName="Text" 
            Type="String" />
        <asp:SessionParameter Name="Owner" SessionField="userid" Type="String" />
        <asp:Parameter DefaultValue="public" Name="AccessType" Type="String" />
        <asp:ControlParameter ControlID="hfDate" Name="UploadDate" PropertyName="Value" 
            Type="DateTime" />
        <asp:Parameter DefaultValue="9999999" Name="HitCount" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="FileName" Type="String" />
        <asp:Parameter Name="Summery" Type="String" />
        <asp:Parameter Name="Owner" Type="String" />
        <asp:Parameter Name="AccessType" Type="String" />
        <asp:Parameter Name="UploadDate" Type="DateTime" />
        <asp:Parameter Name="HitCount" Type="Int32" />
        <asp:Parameter Name="DocID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:HiddenField ID="hfDate" runat="server" />
</asp:Content>

