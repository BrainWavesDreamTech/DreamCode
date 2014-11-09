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
public partial class AccountStatement : System.Web.UI.Page
{
    DataSet ds_trans = new DataSet();
    BanksDataClasses objaccins = new BanksDataClasses();
    accountdata objacc = new accountdata();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void View_Click(object sender, EventArgs e)
    {
        if (AccountNumber.Text != "")
        {
            objacc.accountType = AccountType.SelectedValue;
            objacc.accountno = AccountNumber.Text;

            ds_trans = objaccins.GetTransactionDetails(objacc);
            //dg_trans.DataSource = ds_trans.Tables[0];
            //dg_trans.DataBind();
            DataGrid1.DataSource = ds_trans.Tables[0];
            DataGrid1.DataBind();
        }
        else
        {
            Label4.Text=("You Must Enter Account Number");
        }
 
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        objacc.accountType = AccountType.SelectedValue;
        objacc.accountno = AccountNumber.Text;

        ds_trans = objaccins.GetTransactionDetails(objacc);
        //dg_trans.DataSource = ds_trans.Tables[0];
        //dg_trans.DataBind();
        DataGrid1.DataSource = ds_trans.Tables[0];
        DataGrid1.DataBind();
    }
}
