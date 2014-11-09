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

public partial class AcctoAccSelf : System.Web.UI.Page
{
    BanksDataClasses objaccins = new BanksDataClasses();
    accountdata objacc = new accountdata();
    protected void Page_Load(object sender, EventArgs e)
    {
        string accno = Session["Accno"].ToString();
        txtaccno.Text = accno;
        txtaccno.Enabled = false;
        if (!IsPostBack)
        {

        }
    }
    protected void btnTransfer_Click(object sender, EventArgs e)
    {
        DataSet ds_balbranch = new DataSet();
        string accno = txtaccno.Text;
        ds_balbranch = objaccins.GetBalance(accno);
        string prevbal = ds_balbranch.Tables[0].Rows[0].ItemArray[0].ToString();
        objacc.Transid = System.DateTime.Now.Year.ToString() + System.DateTime.Now.Month.ToString() + System.DateTime.Now.Day.ToString() + System.DateTime.Now.Hour.ToString() + System.DateTime.Now.Minute.ToString() + System.DateTime.Now.Second.ToString();
        objacc.fromaccno = txtaccno.Text;
        objacc.toaccno = txtaccno.Text;
        //objacc.amount = TxtAmount.Text;
        objacc.debit = "0";
        objacc.credit = TxtAmount.Text;
        objacc.TransDate = System.DateTime.Today.ToShortDateString();
        objacc.TransType = "Cash";
        int pbal = Int32.Parse(prevbal);
        int amt = Int32.Parse(TxtAmount.Text);
        int total = pbal + amt;
        objacc.balance = total.ToString();
        objacc.typecode = ds_balbranch.Tables[0].Rows[0].ItemArray[1].ToString();
        objacc.status = "T";
        objacc.desc = "self Acc Transfer";
        objaccins.setselftransaction(objacc);       
    }
}
