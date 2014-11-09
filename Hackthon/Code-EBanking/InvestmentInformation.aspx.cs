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
using BunnyBear;

public partial class InvestmentInformation : System.Web.UI.Page
{
    BanksDataClasses objaccins = new BanksDataClasses();
    accountdata objacc = new accountdata();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Request.Form["res"] == "1")   //if user clicks "OK" to confirm 
        //{
        //    Request.Form["res"].Replace("1", "0");
        //    //Reset the hidden field back to original value "0"

         
        //    //Put the continuing processing code 

        //} 
        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objacc.name = Name.Text;
        objacc.address1 = Address1.Text;
        objacc.address2 = Address2.Text;
        objacc.city = City.Text;
        objacc.state = state.Text;
        objacc.country = country.Text;
        objacc.pincode = pincode.Text;
        objacc.emailid = EmailId.Text;
        objacc.amount = Amount.Text;
        objacc.phone = cn.Text;
        objacc.LoanType = TypeOfLoan.SelectedItem.Text;
        objaccins.InvestmentInfo(objacc);
        //MsgBox1.confirm("Successfully Record is inserted", "res"); 
        Name.Text="";
        Address1.Text = "";
        Address2.Text = "";
        City.Text = "";
        state.Text = "";
        country.Text = "";
        pincode.Text = "";
        EmailId.Text="";
        Amount.Text="";
        cn.Text="";
       
     }
    protected void TypeOfLoan_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
