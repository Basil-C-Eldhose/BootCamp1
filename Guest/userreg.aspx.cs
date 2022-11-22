using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S_Complaint.Guest
{
    public partial class userreg : System.Web.UI.Page
    {
        BAL.CBAL obj=new BAL.CBAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Name = name.Text;
            obj.Age = age.Text;
            obj.Email = email.Text;
            obj.Uname = uname.Text;
            obj.Pass=upass.Text;


            int i = obj.userInsertion();
            name.Text = "";
            age.Text = "";
            email.Text = "";
            uname.Text = "";
            upass.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            name.Text = "";
            age.Text = "";
            email.Text = "";
            uname.Text = "";
            upass.Text = "";
        }
    }
}