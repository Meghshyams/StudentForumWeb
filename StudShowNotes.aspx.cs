using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudShowNotes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String filename = DetailsView1.Rows[2].Cells[1].Text;
        String owner = DetailsView1.Rows[4].Cells[1].Text;
        String url = "Users/" + owner + "/Documents/" + filename;
        btnDownLoad.NavigateUrl = url;
        btnView.NavigateUrl = url;
    }
}