using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using BankingClasses;

public partial class ChequeBookRequests : System.Web.UI.Page
{
    BanksDataClasses objaccins = new BanksDataClasses();
    accountdata objacc = new accountdata();
    DataSet ds_acc = new DataSet();
    DataSet ds_bal = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void press_Click(object sender, EventArgs e)
    {
       ds_acc= objaccins.Viewoldacccheques(Accountno.Text);
       oldchequebookid.Text = ds_acc.Tables[0].Rows[0].ItemArray[0].ToString();
       objacc.name1=ds_acc.Tables[0].Rows[0].ItemArray[1].ToString();
    }
    protected void Request1_Click(object sender, EventArgs e)
    {
        ds_acc = objaccins.Viewoldacccheques(Accountno.Text);
        objacc.accountno = Accountno.Text;
        objacc.name1 = ds_acc.Tables[0].Rows[0].ItemArray[1].ToString();
        objacc.status = "PENDING";
        objacc.oldchequebookid = oldchequebookid.Text;
        objacc.RequestDate = System.DateTime.Today.ToShortDateString();
        objaccins.InsertchequeRequests(objacc);        
    }
}
