<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#003388" >
    <form id="form1" runat="server">
    <div style="border-style:solid;background-image:url('images/bgblue.jpg');border-color:#0088cc;border-width:5px" >
    <div style="background-color:#0088cc;text-align:right" >
    <font face=impact size=6 color=white >Student Forum</font>
    </div>
    <center>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="200px" 
            ImageUrl="~/Images/start_logo_v2.png" style="margin-top: 0px" />
        <br />
        <br />
        <asp:SqlDataSource ID="sqlLogin" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [UserRole] FROM [LoginMaster] WHERE (([UserID] = @UserID) AND ([Pwd] = @Pwd))">
            <SelectParameters>
                <asp:ControlParameter ControlID="hfUserID" Name="UserID" PropertyName="Value" 
                    Type="String" />
                <asp:ControlParameter ControlID="hfPwd" Name="Pwd" PropertyName="Value" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HiddenField ID="hfUserID" runat="server" />
        <asp:HiddenField ID="hfPwd" runat="server" />
        <asp:Login ID="Login1" runat="server" DisplayRememberMe="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#0066CC" Width="217px" 
            onauthenticate="Login1_Authenticate">
            <TextBoxStyle Width="120px" />
        </asp:Login>
        <hr size="3px" style="color: #0088CC" width="300px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
            Font-Names="Pristina" Font-Size="X-Large" ForeColor="#0066CC" 
            NavigateUrl="~/Registration.aspx">New Registration</asp:HyperLink>
        <hr size="3px" style="color: #0088CC" width="300px" />
        <br />
        <br />
    </center>
    </div>
    </form>
</body>
</html>
