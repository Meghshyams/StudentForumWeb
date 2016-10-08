<%@ Page Title="" Language="C#" MasterPageFile="~/ExpertMasterPage.master" AutoEventWireup="true" CodeFile="ExpertAnswer.aspx.cs" Inherits="ExpertAnswer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="Blue" Text="Expert Answer"></asp:Label>
    <hr size="3px" style="color: #0088CC" />
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlQuery">
        <ItemTemplate>
            <table width="600">
                <tr>
                    <td style="width:100px">
    <img src='<%#Eval("PhotoUrl") %>' height=75px />
                    </td>
                    <td>
                        <b><%#Eval("query") %></b><br />
   
                        <i><%#Eval("Subject") %></i><hr />
                        
                        
    
                        By : <%#Eval("Name") %>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlQuery" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT QueryMaster.QueryID, QueryMaster.Query, QueryMaster.UserID, QueryMaster.Subject, QueryMaster.answered, UserMaster.Name, UserMaster.PhotoURL FROM QueryMaster INNER JOIN UserMaster ON QueryMaster.UserID = UserMaster.UserID WHERE (QueryMaster.QueryID = @queryid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="QueryID" QueryStringField="queryid" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <hr size="3px" style="color: #0088CC" />
    <asp:TextBox ID="txtAns" runat="server" Rows="15" TextMode="MultiLine" 
        Width="600px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtAns" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        Text="Submit" />
    <asp:SqlDataSource ID="sqlAnswer" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Answers] WHERE [ANSID] = @ANSID" 
        InsertCommand="INSERT INTO [Answers] ([QueryID], [UserID], [Icon], [HitCount], [Answer]) VALUES (@QueryID, @UserID, @Icon, @HitCount, @Answer)" 
        SelectCommand="SELECT * FROM [Answers]" 
        UpdateCommand="UPDATE QueryMaster SET answered ='true' where queryid=@queryid">
        <DeleteParameters>
            <asp:Parameter Name="ANSID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:QueryStringParameter Name="QueryID" QueryStringField="queryid" 
                Type="Int32" />
            <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
            <asp:Parameter DefaultValue="images/expert.png" Name="Icon" Type="String" />
            <asp:Parameter DefaultValue="9999" Name="HitCount" Type="Int32" />
            <asp:ControlParameter ControlID="txtAns" DefaultValue="" Name="Answer" 
                PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:QueryStringParameter Name="queryid" QueryStringField="queryid" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <hr size="3px" style="color: #0088CC" />
    </asp:Content>

