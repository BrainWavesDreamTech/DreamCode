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

public partial class AcctoAccsamecity : System.Web.UI.Page
{
    BanksDataClasses objaccins = new BanksDataClasses();
    accountdata objacc = new accountdata();
    DataSet ds_acc = new DataSet();
    DataSet ds_bal = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            string accno = Session["Accno"].ToString();
            FromAccountNumber.Text = accno;
            FromAccountNumber.Enabled = false;
            ds_acc = objaccins.GetAccountDetails(accno);
            ToAccountNumber.DataSource = ds_acc.Tables[0];
            ToAccountNumber.DataTextField = "accountno";
            ToAccountNumber.DataValueField = "accountno";
            ToAccountNumber.DataBind();
            ds_bal = objaccins.GetBalance(accno);
            Amount.Text = ds_bal.Tables[0].Rows[0].ItemArray[0].ToString();
        }

    }
    protected void btnTransfer_Click(object sender, EventArgs e)
    {
        DataSet ds_balbranch=new DataSet();
        string accno = FromAccountNumber.Text;
        ds_balbranch=objaccins.GetBalance(accno);
        string prevbal=ds_balbranch.Tables[0].Rows[0].ItemArray[0].ToString();
        int pbalan = Int32.Parse(prevbal);
        int camt = Int32.Parse(Amount.Text);
        if((pbalan-camt)< 500)
        {
            ds_bal = objaccins.GetBalance(accno);
            Amount.Text = ds_bal.Tables[0].Rows[0].ItemArray[0].ToString();
           Response.Write("Account Insufficient Balance");
        }
        
        else
        {
            //if ((pbalan - camt) == 500)
            //{
            //    ds_bal = objaccins.GetBalance(accno);
            //    TxtAmount.Text = ds_bal.Tables[0].Rows[0].ItemArray[0].ToString();
            //    MsgBox1.alert("Account Balance is 500. Please credit youe balance");
            //}
            if (pbalan > 500)
            {
            objacc.Transid=System.DateTime.Now.Year.ToString() + System.DateTime.Now.Month.ToString() + System.DateTime.Now.Day.ToString() + System.DateTime.Now.Hour.ToString() + System.DateTime.Now.Minute.ToString() + System.DateTime.Now.Second.ToString(); 
            objacc.fromaccno = FromAccountNumber.Text;
            objacc.toaccno = ToAccountNumber.SelectedItem.Text;
            objacc.amount =Amount.Text;
            objacc.debit = Amount.Text;
            objacc.credit = "0";
            objacc.TransDate = System.DateTime.Today.ToShortDateString();
            objacc.TransType = "Cash";
            int pbal = Int32.Parse(prevbal);
            int amt=Int32.Parse(Amount.Text);
            int total = pbal - amt;
            objacc.balance = total.ToString();
            objacc.branchcode = ds_balbranch.Tables[0].Rows[0].ItemArray[2].ToString();
            objacc.typecode = ds_balbranch.Tables[0].Rows[0].ItemArray[1].ToString();
            objacc.status = "T";
            objacc.desc = "Acc to Acc Transfer in Same City";
            objaccins.settransaction(objacc);
        }
            ds_bal = objaccins.GetBalance(accno);
            Amount.Text = ds_bal.Tables[0].Rows[0].ItemArray[0].ToString();
            if ((pbalan - camt) == 500)
            {
            //    ds_bal = objaccins.GetBalance(accno);
            //    TxtAmount.Text = ds_bal.Tables[0].Rows[0].ItemArray[0].ToString();
               Label1.Text=("Account Balance is 500. Please credit youe balance");
            }
        }  
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {

    }
}