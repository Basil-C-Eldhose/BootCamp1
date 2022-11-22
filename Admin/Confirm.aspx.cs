using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S_Complaint.Admin
{
    public partial class Confirm : System.Web.UI.Page
    {
        BAL.CBAL obj=new BAL.CBAL();
        DataSet ds = new DataSet();
        DataSet dss=new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ds=obj.gridView();
                GridView1.DataSource = ds;
                GridView1.DataBind();

                dss = obj.confirmView();
                GridView2.DataSource = dss;
                GridView2.DataBind();

            }
            

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int cr = Convert.ToInt32(e.CommandArgument.ToString());
            string v = GridView1.Rows[cr].Cells[0].Text;
            obj.updateGrid(v);
            ds = obj.gridView();
            GridView1.DataSource = ds;
            GridView1.DataBind();

            dss = obj.confirmView();
            GridView2.DataSource = dss;
            GridView2.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        
    }
}