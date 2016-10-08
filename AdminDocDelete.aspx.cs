using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AdminDocDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataView dv=(DataView)sqlDocDel.Select(new DataSourceSelectArguments());
        String filename = (String)dv[0][0];
        String userid =(String) dv[0][1];
        String ppath=Server.MapPath("Users");
        String dpath = ppath + "\\" + userid + "\\Documents\\" + filename;
        System.IO.File.Delete(dpath);
        sqlDocDel.Delete();
        Server.Transfer("AdminDocValidation.aspx");
    }
}