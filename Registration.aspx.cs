using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        DataView dv=(DataView)sqlLogin.Select(new DataSourceSelectArguments());
        if (dv.Count == 0)
        {
            String path = Server.MapPath("Users");
            String upath = path + "\\" + txtUserID.Text;
            System.IO.Directory.CreateDirectory(upath);
            System.IO.Directory.CreateDirectory(upath + "\\Documents");

            if (fuPhoto.HasFile)
            {
                hfPhotoURL.Value = "Users/" + txtUserID.Text + "/" + fuPhoto.FileName;
                fuPhoto.SaveAs(upath + "\\" + fuPhoto.FileName);
            }
            else
            {
                if (rbGender.SelectedIndex == 0)
                    hfPhotoURL.Value = "Images/maleuser.jpg";
                else
                    hfPhotoURL.Value = "Images/femaleuser.jpg";
            }
            sqlUserMaster.Insert();
            sqlLogin.Insert();
            lblmsg.Text = "You are successfully registered.. <a href=default.aspx >Login</a>";
            btnRegister.Enabled = false;
        }
        else
            lblmsg.Text = "Select another ID";
    }
}