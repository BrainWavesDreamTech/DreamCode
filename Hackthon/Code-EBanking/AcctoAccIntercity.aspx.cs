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

public partial class AcctoAccIntercity : System.Web.UI.Page
{
    BanksDataClasses objaccins = new BanksDataClasses();
    accountdata objacc = new accountdata();
    DataSet ds_acc = new DataSet();
    DataSet ds_bal = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        DataSet ds_branch = new DataSet();
        if (!IsPostBack)
        {
            string accno = Session["Accno"].ToString();
            FromAccountNumber.Text = accno;
            FromAccountNumber.Enabled = false;
       
            ds_branch = objaccins.GetBranchDetails(FromAccountNumber.Text);
            Branch.DataSource = ds_branch.Tables[0];
            Branch.DataTextField = "branchname";
            Branch.DataValueField = "branchcode";
            Branch.DataBind();
        }
    }
    protected void branch_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds_accno = new DataSet();
        ds_accno = objaccins.GetbraccountDetails(Branch.SelectedValue.ToString());
        ToAccountNumber.DataSource = ds_accno.Tables[0];
        ToAccountNumber.DataTextField = "accountno";
        ToAccountNumber.DataValueField = "accountno";
        ToAccountNumber.DataBind(); 
    }
  
    protected void Transfer_Click(object sender, EventArgs e)
    {
        DataSet ds_balbranch = new DataSet();
        string accno = FromAccountNumber.Text;
        ds_balbranch = objaccins.GetBalance(accno);
        string prevbal = ds_balbranch.Tables[0].Rows[0].ItemArray[0].ToString();
        if (Int32.Parse(prevbal) <= 500)
        {
            ds_bal = objaccins.GetBalance(accno);
            Amount.Text = ds_bal.Tables[0].Rows[0].ItemArray[0].ToString();
            Label5.Text=("Account Insufficient Balance");
        }
        else
        {
            objacc.Transid = System.DateTime.Now.Year.ToString() + System.DateTime.Now.Month.ToString() + System.DateTime.Now.Day.ToString() + System.DateTime.Now.Hour.ToString() + System.DateTime.Now.Minute.ToString() + System.DateTime.Now.Second.ToString();
            objacc.fromaccno = FromAccountNumber.Text;
            objacc.toaccno = ToAccountNumber.SelectedItem.Text;
            //objacc.amount = TxtAmount.Text;
            objacc.debit = Amount.Text;
            objacc.credit = "0";
            objacc.TransDate = System.DateTime.Today.ToShortDateString();
            objacc.TransType = "Cash";
            int pbal = Int32.Parse(prevbal);
            int amt = Int32.Parse(Amount.Text);
            int total = pbal - amt;
            objacc.balance = total.ToString();
            objacc.typecode = ds_balbranch.Tables[0].Rows[0].ItemArray[1].ToString();
            objacc.status = "T";
            objacc.desc = "Acc to Acc Transfer in Inter City";
            objacc.branchcode = Branch.SelectedValue.ToString();
            objaccins.settransaction(objacc);
            ds_bal = objaccins.GetBalance(accno);
            Amount.Text = ds_bal.Tables[0].Rows[0].ItemArray[0].ToString();
        }  
    }

    protected void Cancel_Click(object sender, EventArgs e)
    {
        Amount.Text = "";
    }
}

