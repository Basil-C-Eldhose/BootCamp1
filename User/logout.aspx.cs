using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S_Complaint.User
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Session.Abandon();
                Session.Remove("user");
                Session.Remove("uid");
                Response.Redirect("../Guest/default.aspx");
            }
            
        }
    }
}