<%@ Page Title="" Language="C#" MasterPageFile="~/StudMasterPage.master" AutoEventWireup="true" CodeFile="StudMyQuery.aspx.cs" Inherits="StudMyQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="My Query"></asp:Label>
    <hr size="3px" style="color: #0088CC" />
    <table style="width: 100%;">
        <tr>
            <td>
                Query</td>
            <td>
                <asp:TextBox ID="txtQuery" runat="server" Rows="4" TextMode="MultiLine" 
                    Width="600px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtQuery" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Subject</td>
            <td class="style1">
                <asp:TextBox ID="txtSub" runat="server" Width="600px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtSub" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Submit" />
            </td>
        </tr>
</table>
    <hr size="3px" style="color: #0088CC" />
<asp:SqlDataSource ID="sqlQuery" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [QueryMaster] WHERE [QueryID] = @QueryID" 
    InsertCommand="INSERT INTO [QueryMaster] ([Query], [UserID], [Subject]) VALUES (@Query, @UserID, @Subject)" 
    SelectCommand="SELECT * FROM [QueryMaster]" 
    UpdateCommand="UPDATE [QueryMaster] SET [Query] = @Query, [UserID] = @UserID, [Subject] = @Subject WHERE [QueryID] = @QueryID">
    <DeleteParameters>
        <asp:Parameter Name="QueryID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="txtQuery" Name="Query" PropertyName="Text" 
            Type="String" />
        <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
        <asp:ControlParameter ControlID="txtSub" Name="Subject" PropertyName="Text" 
            Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Query" Type="String" />
        <asp:Parameter Name="UserID" Type="String" />
        <asp:Parameter Name="Subject" Type="String" />
        <asp:Parameter Name="QueryID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Courier New" 
    ForeColor="Red"></asp:Label>
</asp:Content>

