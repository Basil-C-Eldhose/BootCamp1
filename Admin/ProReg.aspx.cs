using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S_Complaint.Admin
{
    public partial class ProReg : System.Web.UI.Page
    {
        BAL.CBAL obj=new BAL.CBAL();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            ds=obj.viewProduct();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void reg_Click(object sender, EventArgs e)
        {
            obj.Product = pname.Text;
            int i = obj.insertP();
            ds = obj.viewProduct();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            obj.Name = id;
            obj.deleteGrid();
            ds = obj.viewProduct();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}