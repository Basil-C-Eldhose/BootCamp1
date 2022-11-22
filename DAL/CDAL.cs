using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI.WebControls;

namespace S_Complaint.DAL
{
    public class CDAL

    {
        //DAL.CDAL objdal = new DAL.CDAL();
        //DAL.CDAL objdal = new DAL.CDAL();

        public SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        //SqlCommand cmm = new SqlCommand();
        //SqlCommand cmdd=new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataSet dss = new DataSet();

        public CDAL()
        {
            string conn = ConfigurationManager.ConnectionStrings["rrr"].ConnectionString;
            con = new SqlConnection(conn);
            cmd.Connection = con;
            //cmm.Connection = con;
            //cmdd.Connection = con;
        }
        public SqlConnection Getcon()
        {
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            return con;
        }

        public int userInsert(BAL.CBAL obj)
        {
            /*string sts = "not confirmed";
            string ut = "Customer";
            string qq = "insert into login values('" + obj.Uname + "','" + obj.Pass + "','" + sts + "','" + ut + "')";
            SqlCommand cmd = new SqlCommand(qq, Getcon());
            cmd.ExecuteNonQuery();
            cmm.CommandType=CommandType.Text;
            String sql = "select max(lid) from login";
            cmm.CommandText=sql;
            Getcon();
            object ob = cmm.ExecuteScalar();
            string x=ob.ToString();
            string qry = "insert into ureg values('" +obj.Name+"','"+obj.Age+"','"+obj.Email+"','"+obj.Uname+"','"+obj.Pass+"','"+ob+"')";
            
            SqlCommand cmdd = new SqlCommand(qry, Getcon());
            
            return cmdd.ExecuteNonQuery();*/
            string sts = "not confirmed";
            string ut = "Customer";
            string s= "insert into login values('" + obj.Uname + "','" + obj.Pass + "','" + sts + "','" + ut + "');select @@IDENTITY";
            SqlCommand cmd= new SqlCommand(s,Getcon());
            object ob=cmd.ExecuteScalar();

            string ss = "insert into ureg values('" +obj.Name+"','"+obj.Age+"','"+obj.Email+"','"+obj.Uname+"','"+obj.Pass+"','"+ob+"')";
            cmd = new SqlCommand(ss, Getcon());
            return cmd.ExecuteNonQuery();
        }
        public int ProductInsert(BAL.CBAL obj)
        {
            string qry = "insert into product values('" + obj.Product + "')";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            return cmd.ExecuteNonQuery();
        }

        //for Grid View
        public DataSet viewGrid()
        {
           // string s = "not confirmed";
            SqlCommand cmd = new SqlCommand("select login.lid,login.password,login.status,login.username,ureg.name,ureg.email from login inner join ureg on login.lid=ureg.lid\r\n where status='not confirmed';", con);
            //cmd.CommandType = CommandType.Text;
            da.SelectCommand = cmd;
            da.Fill(ds);
            return ds;

        }

        //for Confirm Grid view
        public DataSet gridConfirm()
        {
            string s = "confirmed";
            SqlCommand cmd = new SqlCommand("select login.lid,login.password,login.status,login.username,ureg.name,ureg.email from login inner join ureg on login.lid=ureg.lid\r\n where status='confirmed';", con);
            //cmd.CommandType = CommandType.Text;
            da.SelectCommand = cmd;
            da.Fill(dss);
            return dss;

        }

        //for Grid Update(confirm)

        public void gridUpdate(string v)
        {
            //string s = "not confirmed";
            string ss = "confirmed";
            SqlCommand cmd=new SqlCommand("update login set status='"+ss+"' where username='"+v+"'",con);
            Getcon();
            //cmd.CommandType=CommandType.Text;
            cmd.ExecuteNonQuery();
        }

        public DataTable checkLogin(BAL.CBAL obj)
        {
            string sts = "confirmed";
            string qry = "SELECT * FROM login WHERE username='" + obj.Uname + "' AND password='" + obj.Pass + "' AND status='"+sts+"'";
            SqlCommand cmd=new SqlCommand(qry, Getcon());


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            
            da.Fill(dt);
            return dt;

            
            
        }

        public DataSet productView(BAL.CBAL obj)
        {
            string qry = "SELECT * FROM product";
            // cmd= new SqlCommand(qry, Getcon());
            cmd=new SqlCommand(qry, Getcon());
            SqlDataAdapter da = new SqlDataAdapter();
            DataSet ds = new DataSet();

            da.SelectCommand = cmd;
            da.Fill(ds);
            return ds;

        }
        public void gridDelete(BAL.CBAL obj)
        {
            string s = "DELETE FROM product WHERE pid='" + obj.Name + "'";
            SqlCommand cmd=new SqlCommand(s, Getcon());
            Getcon();
            cmd.ExecuteNonQuery();

        }
        public void insertCom(BAL.CBAL obj)
        {
            string s="select pid from product where product='"+obj.Name+"'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            object ob=cmd.ExecuteScalar();


           /* string ss = "select uid from ureg where uname='" + obj.Uname + "'";
            cmd = new SqlCommand(s, Getcon());
            object ob2 = cmd.ExecuteScalar();*/

            var dat = DateTime.Now.ToString("yyyy-MM-dd");

            string sts = "pending";

            string sss = "insert into complaint values('" + obj.Pass + "','" + ob + "','" + obj.Uname + "','" + sts + "','" + dat + "')";
            cmd = new SqlCommand(sss, Getcon());
            cmd.ExecuteNonQuery();
        }
        public void qryInsert(BAL.CBAL obj)
        {
            string s = "select pid from product where product='" + obj.Name + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            object ob = cmd.ExecuteScalar();

            var dat = DateTime.Now.ToString("yyyy-MM-dd");
            
            string ss="insert into query(qname,pid,uid,date) values('"+obj.Pass+"','" + ob + "','" + obj.Uname + "','" + dat + "')";
            cmd=new SqlCommand(ss,Getcon());
            cmd.ExecuteNonQuery();

        }

        public DataSet viewCom()
        {
            
            string s = "SELECT ureg.name,ureg.email,complaint.coname,complaint.date,product.product,complaint.cid FROM complaint INNER JOIN ureg ON complaint.uid=ureg.lid INNER JOIN product ON complaint.pid = product.pid WHERE complaint.status = 'pending'";
            SqlCommand cmd=new SqlCommand(s, Getcon());
            SqlDataAdapter da= new SqlDataAdapter();
            DataSet ds = new DataSet();
            da.SelectCommand = cmd;
            da.Fill(ds);
            return ds;
        }
        public void upCom(string v)
        {
            string x = "processing";
            string s = "update complaint set status='" + x + "' where cid='" + v + "'";
            SqlCommand cmd=new SqlCommand(s, Getcon());
            cmd.ExecuteNonQuery();
        }
        public DataSet proCom()
        {
            //string x = "processing";
            string s = "SELECT ureg.name,ureg.email,complaint.coname,complaint.date,product.product,complaint.cid FROM complaint INNER JOIN ureg ON complaint.uid=ureg.lid INNER JOIN product ON complaint.pid = product.pid WHERE complaint.status = 'processing'";

            //string s = "select * from complaint where status='" + x + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter aa = new SqlDataAdapter();
            DataSet dd = new DataSet();
            aa.SelectCommand = cmd;
            aa.Fill(dd);
            return dd;
        }
        public void comPp(string v)
        {
            string x = "closed";
            
           string s = "update complaint set status='" + x + "' where cid='" + v + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            cmd.ExecuteNonQuery();

        }

        public DataSet Comcom()
        {
            // string x = "completed";
            // string s = "select * from complaint where status='" + x + "'";
            string s = "SELECT ureg.name,ureg.email,complaint.coname,complaint.date,product.product,complaint.status,complaint.cid FROM complaint INNER JOIN ureg ON complaint.uid=ureg.lid INNER JOIN product ON complaint.pid = product.pid WHERE complaint.status = 'closed'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter aaa = new SqlDataAdapter();
            DataSet ddd = new DataSet();
            aaa.SelectCommand = cmd;
            aaa.Fill(ddd);
            return ddd;
        }

        public DataSet qryView()
        {
            string s = "SELECT query.qname,ureg.name,ureg.email,product.product,query.qid,query.replay FROM query INNER JOIN ureg ON query.uid=ureg.lid INNER JOIN product ON query.pid=product.pid";
            //string s = "select * from query";
            SqlCommand cmd=new SqlCommand(s,Getcon());
            SqlDataAdapter da = new SqlDataAdapter();
            DataSet ds = new DataSet();
            da.SelectCommand=cmd;
            da.Fill(ds);
            return ds;

        }
        public void replaySent(BAL.CBAL obj,string v)
        {
            string s = "update query set replay='" + obj.Name + "' where qid='" + v + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            cmd.ExecuteNonQuery();


        }
        public DataSet stsCom(BAL.CBAL obj)
        {
            string s = "SELECT complaint.coname,product.product,complaint.status FROM complaint INNER JOIN product ON complaint.pid=product.pid WHERE uid='"+obj.Email+"'";
            SqlCommand cmd=new SqlCommand(s, Getcon());
            SqlDataAdapter da=new SqlDataAdapter();
            DataSet ds=new DataSet();
            da.SelectCommand = cmd;
            da.Fill(ds);
            return ds;

        }
        public DataSet viewQry(BAL.CBAL obj)
        {
            string s = "SELECT query.qname,query.replay,product.product from query inner join product on query.pid=product.pid WHERE uid='" + obj.Uname+"'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter();
            DataSet ds = new DataSet();
            da.SelectCommand = cmd;
            da.Fill(ds);
            return ds;
        }

        public DataSet gridDate(BAL.CBAL obj)
        {
            string s = " SELECT ureg.name,ureg.email,complaint.coname,complaint.date,product.product,complaint.cid,complaint.status FROM complaint INNER JOIN ureg ON complaint.uid = ureg.lid INNER JOIN product ON complaint.pid = product.pid WHERE complaint.date between '2005-01-01' and '2022-12-12'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter();
            DataSet ds = new DataSet();
            da.SelectCommand = cmd;
            da.Fill(ds);
            return ds;
        }
    }
}