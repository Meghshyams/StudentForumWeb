<%@ Page Title="" Language="C#" MasterPageFile="~/StudMasterPage.master" AutoEventWireup="true" CodeFile="StudSearchQueries.aspx.cs" Inherits="StudSearchQueries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="Search Queries"></asp:Label>
    <hr size="3px" style="color: #0088CC" />
    Topic
    <asp:TextBox ID="txtSearch" runat="server" Width="400px"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search" 
        onclick="btnSearch_Click" />
    <hr size="3px" style="color: #0088CC" />
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlQueries">
    <ItemTemplate>
    <table width=600 >
    <tr>
    <td style="width:100px" >
    <img src='<%#Eval("PhotoUrl") %>' height=75px />
    </td>
    <td>
    <b><%#Eval("query") %></b><br />
   
    <i><%#Eval("Subject") %></i><br />
    <a href='StudAnswer.aspx?queryid=<%#Eval("queryid") %>' ><img src="Images/answer.jpg" height=20px /></a>
    <hr />
    By : <%#Eval("Name") %>
    </td>
    </tr>
    </table>
    </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlQueries" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT usermaster.userid,name,photourl,query,queryid,subject FROM [QueryMaster],usermaster WHERE usermaster.userid=querymaster.userid and (([answered] = @answered) AND (([Query] LIKE '%' + @Query + '%') OR ([Subject] LIKE '%' + @Subject + '%')))">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="answered" Type="Boolean" />
            <asp:ControlParameter ControlID="txtSearch" Name="Query" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtSearch" Name="Subject" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Arial" 
        ForeColor="Red"></asp:Label>
    <hr size="3px" style="color: #0088CC" />
</asp:Content>

