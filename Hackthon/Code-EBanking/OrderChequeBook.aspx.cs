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
public partial class OrderChequeBook : System.Web.UI.Page
{

    BanksDataClasses objaccins = new BanksDataClasses();
    accountdata objacc = new accountdata();
    protected void Page_Load(object sender, EventArgs e)
    {
       string str_accno;
       DataSet ds_cheque = new DataSet();
       if (!(IsPostBack))
        {
        ds_cheque = objaccins.Getchequebooks();
        newchequebookid.DataSource = ds_cheque.Tables[0];
        newchequebookid.DataTextField = "ChequeBookId";
        newchequebookid.DataBind();
        }
        try
        {
            str_accno = Request.QueryString["accno"].ToString();
        }
        catch
        {
            str_accno = "";
        }
        if (str_accno != "")
        {
            Button3.Visible = false;
            AccountNumber.Text = str_accno;
            DataSet ds = new DataSet();
            ds = objaccins.Viewoldcheques(AccountNumber.Text);
            oldcheque.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
        }
        else
        {
            Button3.Visible = true;
            AccountNumber.Enabled = true;
            oldcheque.Enabled = true;
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (newchequebookid.SelectedItem.Text!= "")
        {
            objaccins.updatechequedetails(AccountNumber.Text, newchequebookid.SelectedItem.Text, oldcheque.Text);
        }

    }

    protected void AccountNumber_TextChanged(object sender, EventArgs e)
    {
       
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = objaccins.Viewoldcheques(AccountNumber.Text);
    
            oldcheque.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
      
    }
}
