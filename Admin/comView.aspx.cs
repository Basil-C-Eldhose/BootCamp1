using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S_Complaint.Admin
{
    public partial class comView : System.Web.UI.Page
    {
        BAL.CBAL obj = new BAL.CBAL();
        DataSet ds = new DataSet();
        DataSet dss=new DataSet();
        DataSet dsss=new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
               // GridView1.EditIndex = -1;
                ds = obj.comView();
                GridView1.DataSource = ds;
                GridView1.DataBind();
               // GridView2.EditIndex = -1;
                dss = obj.comPro();

                GridView2.DataSource = dss;
                GridView2.DataBind();
                //GridView3.EditIndex = -1;
                dsss = obj.comCom();
                GridView3.DataSource = dsss;
                GridView3.DataBind();
            }
            


        }



        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //int cr = Convert.ToInt32(e.CommandArgument.ToString());

            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string v = id.ToString();

            //string v = GridView1.Rows[cr].Cells[3].Text;
            obj.comUp(v);
            //GridView2.EditIndex = -1;
            dss = obj.comPro();
            GridView2.DataSource = dss;
            GridView2.DataBind();

            GridView1.EditIndex = -1;
            ds = obj.comView();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            

            int id = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value.ToString());
            string v = id.ToString();
            obj.comPp(v);

            //GridView2.EditIndex = -1;

            dss = obj.comPro();
            GridView2.DataSource = dss;
            GridView2.DataBind();

            //GridView3.EditIndex = -1;
            dsss = obj.comCom();
            GridView3.DataSource = dsss;
            GridView3.DataBind();
        }

        

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }
    }
}