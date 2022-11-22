using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S_Complaint.Guest
{
    public partial class loginForm : System.Web.UI.Page
    {
        BAL.CBAL obj=new BAL.CBAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            obj.Uname=uname.Text;
            obj.Pass=upass.Text;
            if(uname.Text=="admin" && upass.Text=="admin")
            {
                Response.Redirect("../Admin/Wel.aspx");
            }
            DataTable dt = obj.loginChk();
            if (dt!=null)
            {
                //Session["user"] = luser.Text;
                if(dt.Rows.Count>0)
                {
                    Session["user"] = uname.Text;
                    Session["uid"]=dt.Rows[0][0];
                    Response.Write("Valid user");
                    Response.Redirect("../User/user.aspx");
                }
                else
                {
                    Response.Write("Incorrect User");
                }


            }
            else
            {
               Response.Write("Incorrect User");
            }
        }
    }
}