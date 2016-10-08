<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDocAccept.aspx.cs" Inherits="AdminDocAccept" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sqlAccept" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Documents] WHERE [DocID] = @DocID" 
            InsertCommand="INSERT INTO [Documents] ([AccessType]) VALUES (@AccessType)" 
            SelectCommand="SELECT [AccessType], [DocID] FROM [Documents]" 
            UpdateCommand="UPDATE [Documents] SET [AccessType] = @AccessType WHERE [DocID] = @DocID">
            <DeleteParameters>
                <asp:Parameter Name="DocID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AccessType" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DefaultValue="public" Name="AccessType" Type="String" />
                <asp:QueryStringParameter DefaultValue="" Name="DocID" QueryStringField="docid" 
                    Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
