<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDocDelete.aspx.cs" Inherits="AdminDocDelete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sqlDocDel" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM Documents WHERE (DocID = @docid)" 
            SelectCommand="SELECT [FileName], [Owner] FROM [Documents] WHERE ([DocID] = @DocID)">
            <DeleteParameters>
                <asp:QueryStringParameter Name="docid" QueryStringField="docid" />
            </DeleteParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="DocID" QueryStringField="docid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
