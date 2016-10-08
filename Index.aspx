<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body bgcolor="#003388" >
    <form id="form1" runat="server">
    <div style="border-style:solid;background-image:url('images/bgblue.jpg');border-color:#0088cc;border-width:5px" >
    <div style="background-color:#0088cc;text-align:right; font-family: impact;" >
    <font face=impact size=6 color=white style="font-family: Impact" >The Student Room</font>
    </div>
    <center>
        
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/images (4).jpg" 
            Height = 141px Width =203px align = "left" style="margin-top: 75px"/>
        
        <asp:Image ID="Image1" runat="server" Height="200px" 
            ImageUrl="~/Images/start_logo_v2.png" style="margin-top: 0px" 
            Width="360px" />
        <br />
        <br />
        
        <table style="width:100%; height: 436px;">
            <tr>
                <td colspan="3" align=center class="style1" >
                <center style="border: medium inset #0033CC; font-size: x-large; font-weight: bold; text-decoration: blink;">
                    <asp:Menu ID="Menu1" runat="server" Font-Names="Verdana" Font-Size="Small" 
                        Orientation="Horizontal" onmenuitemclick="Menu1_MenuItemClick">
                        <Items>
                            <asp:MenuItem Text="Home"  NavigateUrl="~/Index.aspx"  Value="Home"></asp:MenuItem>
                            <asp:MenuItem Text="Users" NavigateUrl ="~/UserList.aspx" Value="Users"></asp:MenuItem>
                            <asp:MenuItem Text="Expert" NavigateUrl ="~/ExpertList.aspx" Value="Expert"></asp:MenuItem>
                            <asp:MenuItem Text="EBooks" NavigateUrl ="~/EBooksList.aspx" Value="FAQ"></asp:MenuItem>
                            <asp:MenuItem Text="FAQ" NavigateUrl ="~/FAQList.aspx" Value="FAQ"></asp:MenuItem>
                            <asp:MenuItem Text="About Us" NavigateUrl ="~/AboutUS.aspx" Value="About Us"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#3399FF" ForeColor="#003399" />
                        <StaticMenuItemStyle BackColor="#0066FF" Font-Bold="True" ForeColor="White" 
                            HorizontalPadding="30px" ItemSpacing="10px" VerticalPadding="3px" />
                    </asp:Menu>
                    </center>
                </td>
                
            </tr>
            <tr>
                <td class="style2" >




                    </td>
                <td>
                    <asp:Image ID="Image2"  runat="server" ImageUrl="~/Images/download (3).jpg" 
                        Height = 368px Width =647px />
                </td>
                <td style="width:300px;text-align:right; margin-left: 80px;"  >
        <asp:Login ID="Login1" runat="server" DisplayRememberMe="False" Width="334px" 
            onauthenticate="Login1_Authenticate" BorderColor="#3399FF" BorderStyle="Inset" 
                        Height="161px" style="margin-left: 55px; margin-top: 0px;">
            <LoginButtonStyle BorderColor="#3333CC" BorderStyle="Groove" BorderWidth="3px" 
                Font-Bold="True" />
            <TextBoxStyle Width="120px" />
            <TitleTextStyle Font-Bold="True" Font-Names="Cooper Black" 
                Font-Overline="False" Font-Size="X-Large" Font-Underline="True" 
                ForeColor="Black" />
        </asp:Login>
        <hr size="3px" style="color: #0088CC; margin-left: 120px;" width="300px" />
        &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" 
                        runat="server" Font-Bold="True" 
            Font-Names="Pristina" Font-Size="X-Large" ForeColor="Black" 
            NavigateUrl="~/Registration.aspx">New Registration</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <hr size="3px" style="color: #0088CC; margin-left: 120px;" width="300px" />
                </td>
            </tr>
        </table>
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
        <br />
        <br />
    </center>
    </div>
    </form>
</body>
</html>
