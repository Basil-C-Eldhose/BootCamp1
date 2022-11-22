using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S_Complaint.User
{
    public partial class comreg : System.Web.UI.Page
    {
        BAL.CBAL obj=new BAL.CBAL();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
                Label1.Text = string.Format("{0}", Session["user"]);
                Label3.Text = string.Format("{0}", Session["uid"]);
                obj.Email = string.Format("{0}", Session["uid"]);
                ds = obj.comSts();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // var dat=DateTime.Now.ToString("yyyy-MM-dd");
            //Response.Write(dat);
            obj.Name = DropDownList2.SelectedItem.Value;
            obj.Uname = Label3.Text;
            //obj.Uname = Session["uid"];
            obj.Pass = TextBox1.Text;
            obj.comInsert();
            ds = obj.comSts();
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

 
    }
}