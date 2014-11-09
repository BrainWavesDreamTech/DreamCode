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
public partial class AddUser : System.Web.UI.Page
{
       BanksDataClasses objaccins = new BanksDataClasses();
       accountdata objacc = new accountdata();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["res"] == "1")   //if user clicks "OK" to confirm 
        {
            Request.Form["res"].Replace("1", "0");
            //Reset the hidden field back to original value "0"
            Response.Redirect("AccountNumbers.aspx");
        } 
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objacc.UserID = UserId.Text;
        objacc.Password = Password.Text;
        objacc.accountno = AccountNumber.Text;
        objaccins.AddUserDetails(objacc);
        MsgBox1.confirm("Successfully Record is inserted", "res"); 
     }
    protected void Button2_Click(object sender, EventArgs e)
    {
       UserId.Text = "";
        Password.Text = "";
        Retypepassword.Text = "";
        AccountNumber.Text = "";
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }
}
