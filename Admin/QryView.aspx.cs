using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S_Complaint.Admin
{
    public partial class QryView : System.Web.UI.Page
    {
        BAL.CBAL obj = new BAL.CBAL();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
             DataSet ds=obj.viewQry();
            //GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
             GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            DataSet ds = obj.viewQry();
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            DataSet ds = obj.viewQry();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //string empid = GridView1.DataKeys[e.RowIndex].Value.ToString();

            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string v = id.ToString();

            GridViewRow row = GridView1.Rows[e.RowIndex];

            TextBox txtname = new TextBox();
            txtname = (TextBox)(row.Cells[4].Controls[0]);

            obj.Name=txtname.Text;
            obj.sentReplay(v);

            GridView1.EditIndex = -1;
            DataSet ds = obj.viewQry();
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
    }
}