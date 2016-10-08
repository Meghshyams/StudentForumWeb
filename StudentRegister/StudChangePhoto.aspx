<%@ Page Title="" Language="C#" MasterPageFile="~/StudMasterPage.master" AutoEventWireup="true" CodeFile="StudChangePhoto.aspx.cs" Inherits="StudChangePhoto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="Change Photo"></asp:Label>
    <hr size="3px" style="color: #0088CC" />
    Select Photo<asp:FileUpload ID="fuPhoto" runat="server" Width="302px" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="fuPhoto" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
        Text="Upload" />
    <hr size="3px" style="color: #0088CC" />
    <asp:SqlDataSource ID="sqlchangePhoto" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [UserMaster] WHERE [UserID] = @UserID" 
        InsertCommand="INSERT INTO [UserMaster] ([UserID], [PhotoURL]) VALUES (@UserID, @PhotoURL)" 
        SelectCommand="SELECT [UserID], [PhotoURL] FROM [UserMaster]" 
        UpdateCommand="UPDATE [UserMaster] SET [PhotoURL] = @PhotoURL WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserID" Type="String" />
            <asp:Parameter Name="PhotoURL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="hfPhoto" Name="PhotoURL" PropertyName="Value" 
                Type="String" />
            <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:HiddenField ID="hfPhoto" runat="server" />
</asp:Content>

