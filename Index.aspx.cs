using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        hfUserID.Value = Login1.UserName;
        hfPwd.Value = Login1.Password;
        DataView dv=(DataView)sqlLogin.Select(new DataSourceSelectArguments());
        if (dv.Count == 1)
        {
            String userrole=(String)dv[0][0];
            Session.Add("userid", hfUserID.Value);
            if (userrole == "student")
                Server.Transfer("StudHome.aspx");
            if (userrole == "expert")
                Server.Transfer("ExpertHome.aspx");
            if (userrole == "admin")
                Server.Transfer("AdminHome.aspx");

        }
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        
    }



    public void ShowUsers()
    {



    }


}