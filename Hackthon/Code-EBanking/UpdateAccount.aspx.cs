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
public partial class UpdateAccount : System.Web.UI.Page
{
        BanksDataClasses objbank = new BanksDataClasses();
        accountdata objaccinf = new accountdata();
        DataSet ds_accinf = new DataSet();
     
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objaccinf.accountno = Txt_Accno.Text;
        objaccinf.name = txtfname.Text;
        objaccinf.fathers_name = txtfname.Text;
        objaccinf.dateofbirth = txtdob.Text;
        objaccinf.age = txtage.Text;
        objaccinf.maritalstatus = txtmarital.Text;
        objaccinf.address =txtaddress.Text;
        objaccinf.city = txtcity.Text;
        objaccinf.state = txtstate.Text;
        objaccinf.country = txtcountry.Text;
        objaccinf.pincode =txtpin.Text;
        objaccinf.phone = txtphone.Text;
        objaccinf.emailid = txtemail.Text;
        objbank.Updateaccountinfo(objaccinf);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

      
        ds_accinf = objbank.GetAccData(Txt_Accno.Text.ToString());
        txt_name.Text = ds_accinf.Tables[0].Rows[0].ItemArray[0].ToString();
        txtfname.Text = ds_accinf.Tables[0].Rows[0].ItemArray[1].ToString();
        txtdob.Text = ds_accinf.Tables[0].Rows[0].ItemArray[2].ToString();
        txtage.Text = ds_accinf.Tables[0].Rows[0].ItemArray[3].ToString();
        txtmarital.Text = ds_accinf.Tables[0].Rows[0].ItemArray[4].ToString();
        txtaddress.Text = ds_accinf.Tables[0].Rows[0].ItemArray[5].ToString();
        txtcity.Text = ds_accinf.Tables[0].Rows[0].ItemArray[6].ToString();
        txtstate.Text = ds_accinf.Tables[0].Rows[0].ItemArray[7].ToString();
        txtcountry.Text = ds_accinf.Tables[0].Rows[0].ItemArray[8].ToString();
        txtpin.Text = ds_accinf.Tables[0].Rows[0].ItemArray[9].ToString();
        txtphone.Text = ds_accinf.Tables[0].Rows[0].ItemArray[10].ToString();
        txtemail.Text = ds_accinf.Tables[0].Rows[0].ItemArray[11].ToString();    


    }
}
