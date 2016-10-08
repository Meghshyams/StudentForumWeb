<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FAQList.aspx.vb" Inherits="FAQList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <style type="text/css">
        .style1
        {
            width: 275px;
        }
    </style>
</head>
<body bgcolor="#003388" alink=white vlink=white link=white 
    style="height: 615px"  >
    
   
    <div style="border-style:solid;background-image:url('images/bgblue.jpg');border-color:#0088cc;border-width:5px" >
    <div style="background-color:#0088cc;text-align:right" >
    <font face=impact size=6 color=white >The Student&#39;s Room</font>
    </div>
        <table style="width: 100%; height: 610px;">
            <tr valign="top" >
                <td class="style1" >
                    &nbsp;
                    <br />
                    <center>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/query.jpg" 
                        style="margin-left: 0px" Width="205px" />
                    <br />
                    <hr size="3px" style="color: #0088CC" />
                    <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="X-Large" 
                        Text="FAQ"></asp:Label>
                    <hr size="3px" style="color: #0088CC" />
                    </center>
                    
                </td>
                <td style="margin-left: 80px">
                 <form id="form1" runat="server">
    
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataSourceID="SqlFAQ" ForeColor="#333333" GridLines="None" Height="361px" 
                        Width="524px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Query" HeaderText="Query" SortExpression="Query" />
                            <asp:BoundField DataField="UserID" HeaderText="UserID" 
                                SortExpression="UserID" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" 
                                SortExpression="Subject" />
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
                    <asp:SqlDataSource ID="SqlFAQ" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Query], [UserID], [Subject] FROM [QueryMaster]">
                    </asp:SqlDataSource>
                </form> 
                </td>
