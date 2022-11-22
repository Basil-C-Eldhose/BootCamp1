using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S_Complaint.Admin
{
    public partial class DateCom : System.Web.UI.Page
    {
        BAL.CBAL obj=new BAL.CBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            for(int i=1;i<=31;i++)
            {
                DropDownList1.Items.Add(new ListItem(i.ToString()));
                DropDownList4.Items.Add(new ListItem(i.ToString()));

            }
            for (int i = 1;i<= 12;i++)
            {
                DropDownList2.Items.Add(new ListItem(i.ToString()));
                DropDownList5.Items.Add(new ListItem(i.ToString()));
            }
            for(int i=2020;i<=2030;i++)
            {
                DropDownList3.Items.Add(new ListItem(i.ToString()));
                DropDownList6.Items.Add(new ListItem(i.ToString()));
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = DropDownList3.SelectedItem.Value+'-'+DropDownList2.SelectedItem.Value+'-'+DropDownList1.SelectedItem.Value;
            string t = DropDownList6.SelectedItem.Value + '-' + DropDownList5.SelectedItem.Value + '-' + DropDownList4.SelectedItem.Value;
            obj.Age = s;
            obj.Email = t;
            DataSet ds=obj.dateGrid();
            GridView1.DataSource =ds;
            GridView1.DataBind();

        }
    }
}