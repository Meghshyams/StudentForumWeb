using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class StudSearchNotes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlNotes.Update();
        Server.Transfer("StudShowNotes.aspx?docid=" + GridView1.SelectedDataKey.Value);
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        DataView dv=(DataView)SqlNotes.Select(new DataSourceSelectArguments());
        if (dv.Count == 0)
            lblmsg.Text = "No Result Found";
        else
            lblmsg.Text = "";
    }
}