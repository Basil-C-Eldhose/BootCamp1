using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace S_Complaint.BAL
{
    public class CBAL
    {

        
        DAL.CDAL objdal = new DAL.CDAL();

        //create 5 variable based on table 
        private string _name;
        private string _age;
        private string _email;
        private string _uname;
        private string _upass;

        private string _product;

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        public string Age { get { return _age; }
            set { _age = value; }
        }
        public string Email { get { return _email; }
            set
            {
                _email = value;
            }}

        public string Uname { get { return _uname; }
            set
            {
                _uname = value;
            } }

        public string Pass { get { return _upass; }
            set
            {
                _upass = value;
            } }

        public string Product
        {
            get { return _product; }
            set { _product = value; }
        }

        
        public int userInsertion()
        {
            return objdal.userInsert(this);
        }
        public int insertP()
        {
            return objdal.ProductInsert(this);
        }

        //For Grid View
        public DataSet gridView()
        {
            return objdal.viewGrid();
        }
        //Update Grid
        public void updateGrid(string v)
        {
            objdal.gridUpdate(v);
        }

        //for Confirm GridView

        public DataSet confirmView()
        {

            return objdal.gridConfirm();
        }

        public DataTable loginChk()
        {
            return objdal.checkLogin(this);
        }

        public DataSet viewProduct()
        {
            return objdal.productView(this);
        }
        public void deleteGrid()
        {
            objdal.gridDelete(this);
        }
        public void comInsert()
        {
            objdal.insertCom(this);
        }

        public void insertQry()
        {
            objdal.qryInsert(this);
        }

        public DataSet comView()
        {
            return objdal.viewCom();
        }

        public void comUp(string v)
        {
            objdal.upCom(v);
        }
        public DataSet comPro()
        {
            return objdal.proCom();
        }
        public void comPp(string v)
        {
            objdal.comPp(v);
        }
        public DataSet comCom()
        {
            return objdal.Comcom();

        }

        public DataSet viewQry()
        {
            return objdal.qryView();
        }

        public void sentReplay(string v)
        {
            objdal.replaySent(this,v);
        }
        public DataSet comSts()
        {
            return objdal.stsCom(this);
        }
        public DataSet qryView()
        {
            return objdal.viewQry(this);
        }
        public DataSet dateGrid()
        {
            return objdal.gridDate(this);
        }
    }
}