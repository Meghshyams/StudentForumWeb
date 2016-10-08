<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddExpert.aspx.cs" Inherits="AdminAddExpert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="New Expert"></asp:Label>
    <hr size="3px" style="color: #0088CC" />
<table style="width: 100%;">
    <tr>
        <td>
            Name</td>
        <td>
            <asp:TextBox ID="txtName" runat="server" Width="400px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" 
                ForeColor="#FF5050">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            EmailID</td>
        <td>
            <asp:TextBox ID="txtEmailID" runat="server" Width="400px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtEmailID" ErrorMessage="RequiredFieldValidator" 
                ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmailID" ErrorMessage="RegularExpressionValidator" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            Qualification</td>
        <td>
            <asp:TextBox ID="txtQualification" runat="server" Width="400px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtQualification" ErrorMessage="RequiredFieldValidator" 
                ForeColor="#FF5050">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Expertise</td>
        <td>
            <asp:TextBox ID="txtExpertise" runat="server" Rows="5" TextMode="MultiLine" 
                Width="400px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtExpertise" ErrorMessage="RequiredFieldValidator" 
                ForeColor="#FF5050">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            UserID</td>
        <td>
            <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtUserID" ErrorMessage="RequiredFieldValidator" 
                ForeColor="#FF5050">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Password</td>
        <td>
            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtPwd" ErrorMessage="RequiredFieldValidator" 
                ForeColor="#FF5050">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Confirm</td>
        <td>
            <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtConfirm" ErrorMessage="RequiredFieldValidator" 
                ForeColor="#FF5050">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPwd" ControlToValidate="txtConfirm" 
                ErrorMessage="CompareValidator" ForeColor="Red">Not Matching</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="Add" 
                Width="126px" />
        </td>
    </tr>
</table>
    <hr size="3px" style="color: #0088CC" />
<asp:SqlDataSource ID="sqlExpert" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [ExpertMaster] WHERE [ExpertID] = @ExpertID" 
    InsertCommand="INSERT INTO [ExpertMaster] ([ExpertID], [Name], [EmailID], [Qualification], [Expertise]) VALUES (@ExpertID, @Name, @EmailID, @Qualification, @Expertise)" 
    SelectCommand="SELECT * FROM [ExpertMaster]" 
    UpdateCommand="UPDATE [ExpertMaster] SET [Name] = @Name, [EmailID] = @EmailID, [Qualification] = @Qualification, [Expertise] = @Expertise WHERE [ExpertID] = @ExpertID">
    <DeleteParameters>
        <asp:Parameter Name="ExpertID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="txtUserID" Name="ExpertID" PropertyName="Text" 
            Type="String" />
        <asp:ControlParameter ControlID="txtName" Name="Name" PropertyName="Text" 
            Type="String" />
        <asp:ControlParameter ControlID="txtEmailID" Name="EmailID" PropertyName="Text" 
            Type="String" />
        <asp:ControlParameter ControlID="txtQualification" Name="Qualification" 
            PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="txtExpertise" Name="Expertise" 
            PropertyName="Text" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="EmailID" Type="String" />
        <asp:Parameter Name="Qualification" Type="String" />
        <asp:Parameter Name="Expertise" Type="String" />
        <asp:Parameter Name="ExpertID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="sqlLogin" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [LoginMaster] WHERE [UserID] = @UserID" 
    InsertCommand="INSERT INTO [LoginMaster] ([UserID], [Pwd], [UserRole]) VALUES (@UserID, @Pwd, @UserRole)" 
    SelectCommand="SELECT * FROM [LoginMaster] WHERE ([UserID] = @UserID)" 
    UpdateCommand="UPDATE [LoginMaster] SET [Pwd] = @Pwd, [UserRole] = @UserRole WHERE [UserID] = @UserID">
    <DeleteParameters>
        <asp:Parameter Name="UserID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="txtUserID" Name="UserID" PropertyName="Text" 
            Type="String" />
        <asp:ControlParameter ControlID="txtPwd" Name="Pwd" PropertyName="Text" 
            Type="String" />
        <asp:Parameter DefaultValue="expert" Name="UserRole" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="txtUserID" Name="UserID" PropertyName="Text" 
            Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Pwd" Type="String" />
        <asp:Parameter Name="UserRole" Type="String" />
        <asp:Parameter Name="UserID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Courier New" 
    ForeColor="Red"></asp:Label>
</asp:Content>

