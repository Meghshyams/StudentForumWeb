using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class StudSearchQueries : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
       DataView dv =(DataView)SqlQueries.Select(new DataSourceSelectArguments());
       if (dv.Count == 0)
           lblmsg.Text = "No Result Found";
       else
           lblmsg.Text = "";
    }
}