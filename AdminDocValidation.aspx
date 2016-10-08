<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master" AutoEventWireup="true" CodeFile="AdminDocValidation.aspx.cs" Inherits="AdminDocValidation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="Document Validation"></asp:Label>
    <hr size="3px" style="color: #0088CC" />
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDocs">
    <ItemTemplate>
    <table width=700px >
    <tr>
    <td style="width:350px" >
    <img src="Images/doc.png" height=50px /><br />
    <a href='Users/<%#Eval("owner") %>/Documents/<%#Eval("filename") %>' target=newframe ><img src="Images/view.jpg" /></a>
    <a href='adminDocDelete.aspx?docid=<%#Eval("docid") %>&owner=<%#Eval("owner") %>' ><img src="Images/delete.jpg" /></a>
    <a href='adminDocAccept.aspx?docid=<%#Eval("docid") %>&owner=<%#Eval("owner") %>' ><img src="Images/accept.jpg" /></a>
    
    </td>
    <td>
    <b><%#Eval("title") %></b><br />
    By :<%#Eval("owner") %><br /><i><%#Eval("summery") %></i></td>
    </tr>
    </table>
    </ItemTemplate>
    <SeparatorTemplate>
    <hr color=gray size=1px />
    </SeparatorTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDocs" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [DocID], [Title], [Summery], [Owner],filename FROM [Documents] WHERE ([AccessType] = @AccessType) ORDER BY [UploadDate] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="private" Name="AccessType" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <hr size="3px" style="color: #0088CC" />
</asp:Content>

