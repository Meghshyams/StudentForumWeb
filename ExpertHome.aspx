<%@ Page Title="" Language="C#" MasterPageFile="~/ExpertMasterPage.master" AutoEventWireup="true" CodeFile="ExpertHome.aspx.cs" Inherits="Images_ExpertHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="New Queries"></asp:Label>
        <hr size="3px" style="color: #0088CC" />
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlQuery">
    <ItemTemplate>
    <table width=600 >
    <tr>
    <td style="width:100px" >
    <img src='<%#Eval("PhotoUrl") %>' height=75px />
    </td>
    <td>
    <b><%#Eval("query") %></b><br />
   
    <i><%#Eval("Subject") %></i><br />
    <a href='ExpertProfile.aspx?queryid=<%#Eval("queryid") %>' ><img src="Images/answer.jpg" height=20px /></a>
    <hr />
    By : <%#Eval("Name") %>
    </td>
    </tr>
    </table>
    </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlQuery" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT QueryMaster.QueryID, QueryMaster.Query, QueryMaster.UserID, QueryMaster.Subject, UserMaster.Name, UserMaster.PhotoURL FROM QueryMaster INNER JOIN UserMaster ON QueryMaster.UserID = UserMaster.UserID where answered='false'">
    </asp:SqlDataSource>

    <hr size="3px" style="color: #0088CC" />
</asp:Content>

