using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_AdminUploadBooks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        hfDate.Value = DateTime.Now.ToString();
        sqlDoc.Insert();
        String path = Server.MapPath("Users");
        String dpath = path + "\\" + (String)Session["userid"] + "\\Documents\\" + fuDoc.FileName;
        fuDoc.SaveAs(dpath);
        btnUpload.Enabled = false;
        lblmsg.Text = "Document Uploaded..";
    }
}