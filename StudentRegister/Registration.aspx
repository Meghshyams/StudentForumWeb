<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
    </style>
</head>
<body text="#0066cc" link=white alink=white vlink=white >
    <form id="form1" runat="server">
   <div style="border-style:solid;background-image:url('images/bgblue.jpg');border-color:#0088cc;border-width:5px" >
    <div style="background-color:#0088cc;text-align:right" >
    <font face=impact size=6 color=white >Student Forum</font>
    </div>
    <center>
        <br />
        <table style="width:500px">
            <tr align=left style="background-color:#0066cc;text-align:right" >
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Pristina" 
                        Font-Size="X-Large" ForeColor="White" Text="Registration Form "></asp:Label>
                        <span style="width:30px" ></span>
                    <asp:Label ID="Label2" runat="server" Width="30px"></asp:Label>
                </td>
            </tr>
            <tr align=left >
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align=left >
                <td>
                    Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align=left >
                <td>
                    Address</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align=left >
                <td>
                    EmailID</td>
                <td>
                    <asp:TextBox ID="txtEmailID" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtEmailID" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align=left >
                <td>
                    ContactNo</td>
                <td>
                    <asp:TextBox ID="txtContactNo" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr align=left >
                <td>
                    Gender</td>
                <td>
                    <asp:RadioButtonList ID="rbGender" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr align=left >
                <td class="style1">
                    College</td>
                <td class="style1">
                    <asp:TextBox ID="txtCollege" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtCollege" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align=left >
                <td>
                    City</td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtCity" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align=left >
                <td>
                    Branch</td>
                <td>
                    <asp:TextBox ID="txtBranch" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtBranch" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align=left >
                <td>
                    Photo</td>
                <td>
                    <asp:FileUpload ID="fuPhoto" runat="server" Width="400px" />
                </td>
            </tr>
            <tr align=left >
                <td>
                    UserID</td>
                <td>
                    <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtUserID" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align=left >
                <td>
                    Pwd</td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtPwd" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align=left >
                <td>
                    Confirm</td>
                <td>
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtConfirm" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPwd" ControlToValidate="txtConfirm" 
                        ErrorMessage="CompareValidator" ForeColor="Red">Not Matching</asp:CompareValidator>
                </td>
            </tr>
            <tr align=left >
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/home_icon.png" 
                        NavigateUrl="~/Default.aspx">Home page</asp:HyperLink>
                </td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" BackColor="#0066CC" 
                        Font-Bold="True" ForeColor="White" Text="Register" Width="126px" 
                        onclick="btnRegister_Click" />
                </td>
            </tr>
        </table>
        <br />
        <hr size="3px" style="color: #0088CC" width="300px" />
        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Courier New" 
            ForeColor="Red"></asp:Label>
        <asp:HiddenField ID="hfPhotoURL" runat="server" />
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
                <asp:Parameter DefaultValue="student" Name="UserRole" Type="String" />
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
        <asp:SqlDataSource ID="sqlUserMaster" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [UserMaster] WHERE [UserID] = @UserID" 
            InsertCommand="INSERT INTO [UserMaster] ([UserID], [Name], [Address], [EmailID], [ContactNo], [College], [City], [Branch], [Gender], [PhotoURL]) VALUES (@UserID, @Name, @Address, @EmailID, @ContactNo, @College, @City, @Branch, @Gender, @PhotoURL)" 
            SelectCommand="SELECT * FROM [UserMaster]" 
            UpdateCommand="UPDATE [UserMaster] SET [Name] = @Name, [Address] = @Address, [EmailID] = @EmailID, [ContactNo] = @ContactNo, [College] = @College, [City] = @City, [Branch] = @Branch, [Gender] = @Gender, [PhotoURL] = @PhotoURL WHERE [UserID] = @UserID">
            <DeleteParameters>
                <asp:Parameter Name="UserID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtUserID" Name="UserID" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtName" Name="Name" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtAddress" Name="Address" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtEmailID" Name="EmailID" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtContactNo" Name="ContactNo" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtCollege" Name="College" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtCity" Name="City" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtBranch" Name="Branch" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="rbGender" Name="Gender" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="hfPhotoURL" Name="PhotoURL" 
                    PropertyName="Value" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="EmailID" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="College" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Branch" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="PhotoURL" Type="String" />
                <asp:Parameter Name="UserID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <hr size="3px" style="color: #0088CC" width="300px" />
        <br />
        <br />
    </center>
    </div>
    </form>
</body>
</html>
