using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AdminAddExpert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        DataView dv=(DataView)sqlLogin.Select(new DataSourceSelectArguments());
        if (dv.Count == 0)
        {
            sqlLogin.Insert();
            sqlExpert.Insert();
            lblmsg.Text = "Expert Registered..";
            btnAdd.Enabled = false;
        }
    }
}