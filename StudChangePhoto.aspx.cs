using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudChangePhoto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        String ppath=Server.MapPath("Users");
        String fppath = ppath + "\\" + (String)Session["userid"] + "\\" + fuPhoto.FileName;
        fuPhoto.SaveAs(fppath);
        hfPhoto.Value ="Users/"+ (String)Session["userid"] + "/" + fuPhoto.FileName;
        sqlchangePhoto.Update();
        Server.Transfer("StudHome.aspx");
    }
}