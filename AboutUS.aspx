<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUS.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#003388" alink=white vlink=white link=white 
    style="height: 1063px"  >
    
    <form id="form1" runat="server">
    
    <div style="border-style:solid;background-image:url('images/bgblue.jpg');border-color:#0088cc;border-width:5px" >
    <div style="background-color:#0088cc;text-align:right; width: 1380px;" >
    <font face=impact size=6 color=white >The Student&#39;s Room&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>
    &nbsp;</div>
        <table style="width: 100%; height: 800px;">
            <tr valign="top" >
                <td style="width:200px" >
                    &nbsp;
                    <br />
                    <center style="width: 238px; margin-top: 0px">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/images (2).jpg" 
                        style="margin-left: 0px" Width="221px" Height="231px" />
                    <br />
                    <hr size="3px" style="color: #0088CC; width: 219px;" />

                    <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="X-Large" 
                        Text="ABOUT US"></asp:Label>
                    <hr size="3px" style="color: #0088CC; width: 216px;" />
                   
                   <td>
                   
                       <asp:Image ID="Image2"   ImageUrl ="~/Images/005.jpg" runat="server" 
                           Height="792px" Width="768px" />
                   
                   </td>
                    </center>
    </form>
</body>
</html>
