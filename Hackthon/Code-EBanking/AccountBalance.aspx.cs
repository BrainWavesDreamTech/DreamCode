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
public partial class AccountBalance : System.Web.UI.Page
{
    BanksDataClasses objaccins = new BanksDataClasses();
    accountdata objacc = new accountdata();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["res"] == "1")   //if user clicks "OK" to confirm 
        {
            Request.Form["res"].Replace("1", "0");
            //Reset the hidden field back to original value "0"

            AccountNumber.Text = "";
            //Put the continuing processing code 

        }
    
    }
    protected void CheckBal_Click(object sender, EventArgs e)
    {
        if (AccountNumber.Text != "")
        {
            DataSet ds_bal = new DataSet();
            objacc.accountno = AccountNumber.Text;
            objacc.accountType = AccountType.SelectedValue;
            ds_bal = objaccins.GetBalanceDetails(objacc);
            try
            {
                MsgBox1.alert("Your Account Balance is :" + ds_bal.Tables[0].Rows[0].ItemArray[0].ToString());
            }
            catch
            {
                MsgBox1.alert("Nil Balance");
            }
        }
        else
        {
            MsgBox1.alert("You Must Enter Account Number");
        }
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        AccountNumber.Text = "";
    }
   
}
