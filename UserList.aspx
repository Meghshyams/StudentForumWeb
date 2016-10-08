<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserList.aspx.cs" Inherits="UserList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    
    <style type="text/css">
        .style1
        {
            width: 241px;
        }
    </style>
</head>
<body bgcolor="#003388" alink=white vlink=white link=white 
    style="height: 615px"  >
    
    <form id="form1" runat="server">
    
    <div style="border-style:solid;background-image:url('images/bgblue.jpg');border-color:#0088cc;border-width:5px" >
    <div style="background-color:#0088cc;text-align:right" >
    <font face=impact size=6 color=white >The Student&#39;s Room</font>
    </div>
        <table style="width: 100%; height: 571px;">
            <tr valign="top" >
                <td class="style1" >
                    &nbsp;
                    <br />
                    <center>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/images (5).jpg" 
                        style="margin-left: 0px" Width="205px" />
                    <br />
                    <hr size="3px" style="color: #0088CC" />
                    <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="X-Large" 
                        Text="Students"></asp:Label>
                    <hr size="3px" style="color: #0088CC" />
                    </center>
                    
                </td>
                <td>
                
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="SqlStudent" ForeColor="#333333" GridLines="None" 
                        Height="188px" Width="725px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                                SortExpression="Gender" />
                            <asp:BoundField DataField="Branch" HeaderText="Branch" 
                                SortExpression="Branch" />
                            <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                                SortExpression="EmailID" />
                            <asp:BoundField DataField="City" HeaderText="City" 
                                SortExpression="City" />
                            <asp:BoundField DataField="College" HeaderText="College" 
                                SortExpression="College" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlStudent" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Name], [Gender], [Branch], [PhotoURL], [EmailID], [City], [College] FROM [UserMaster]">
                    </asp:SqlDataSource>
                
                </td>
                </form>