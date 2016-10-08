<%@ Page Title="" Language="C#" MasterPageFile="~/StudMasterPage.master" AutoEventWireup="true" CodeFile="StudAnswer.aspx.cs" Inherits="StudAnswer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="Query"></asp:Label>
    <hr size="3px" style="color: #0088CC" />
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlQuery">
    <ItemTemplate>
    <table width=600 >
    <tr>
    <td style="width:100px" >
    <img src='<%#Eval("PhotoUrl") %>' height=75px />
    </td>
    <td>
    <b><%#Eval("query") %></b><br />
   
    <i><%#Eval("Subject") %></i>
    <hr />
    By : <%#Eval("Name") %>
    </td>
    </tr>
    </table>
    </ItemTemplate>
    <SeparatorTemplate>
    <hr />
    </SeparatorTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlQuery" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT QueryMaster.QueryID, QueryMaster.Query, QueryMaster.UserID, QueryMaster.Subject, QueryMaster.answered, UserMaster.Name, UserMaster.PhotoURL FROM QueryMaster INNER JOIN UserMaster ON QueryMaster.UserID = UserMaster.UserID WHERE (QueryMaster.QueryID = @queryid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="queryid" QueryStringField="queryid" />
        </SelectParameters>
    </asp:SqlDataSource>
    <hr size="3px" style="color: #0088CC" />
    <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlAnswer">
    <HeaderTemplate>
        <table>
    </HeaderTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
    <SeparatorTemplate>
    <tr><td rowspan=2 ><hr /></td></tr>
    </SeparatorTemplate>
    <ItemTemplate>
        <tr>
        <td valign=top >
        <center>
        <img src='<%#Eval("icon") %>' height=50px />
        <hr size=1px />
        <%#Eval("userid") %>
        </center>
        </td>
        <td>
        
        <%#Eval("answer") %>
        
        </td>
        </tr>
    </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlAnswer" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Answers] WHERE [ANSID] = @ANSID" 
        InsertCommand="INSERT INTO [Answers] ([QueryID], [UserID], [Icon], [HitCount], [Answer]) VALUES (@QueryID, @UserID, @Icon, @HitCount, @Answer)" 
        SelectCommand="SELECT * FROM [Answers] WHERE ([QueryID] = @QueryID)" 
        UpdateCommand="UPDATE [Answers] SET [QueryID] = @QueryID, [UserID] = @UserID, [Icon] = @Icon, [HitCount] = @HitCount, [Answer] = @Answer WHERE [ANSID] = @ANSID">
        <DeleteParameters>
            <asp:Parameter Name="ANSID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="QueryID" Type="Int32" />
            <asp:Parameter Name="UserID" Type="String" />
            <asp:Parameter Name="Icon" Type="String" />
            <asp:Parameter Name="HitCount" Type="Int32" />
            <asp:Parameter Name="Answer" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="QueryID" QueryStringField="queryid" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="QueryID" Type="Int32" />
            <asp:Parameter Name="UserID" Type="String" />
            <asp:Parameter Name="Icon" Type="String" />
            <asp:Parameter Name="HitCount" Type="Int32" />
            <asp:Parameter Name="Answer" Type="String" />
            <asp:Parameter Name="ANSID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <hr size="3px" style="color: #0088CC" />
</asp:Content>

