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
using System.IO;
using BunnyBear;
using BankingClasses;
using System.Net.Mail;
public partial class AssignAccountNo : System.Web.UI.Page
{
    string strName; 
    string strFName;
    string strDOB;
    string strage;
    string strstate;
    string strcountry;
    string strpincode;
    string strphone;
    string stremail;
    string straddress;
    string strMstatus;
    string strcity;
   BanksDataClasses objaccins = new BanksDataClasses();
   accountdata objacc = new accountdata();
    protected void Page_Load(object sender, EventArgs e)
    {
        //    if (Request.Form["res"] == "1")   //if user clicks "OK" to confirm 
        //{
        //    Request.Form["res"].Replace("1", "0");
        //    //Reset the hidden field back to original value "0"

        //    Response.Redirect("CreateAccount.aspx");
        //    //Put the continuing processing code 
         
        //} 
        
        
        DataSet ds_debit=new DataSet();
        DataSet ds_cheque = new DataSet();
        DataSet ds_branch = new DataSet();
        if (!IsPostBack)
        {
            AccountNumber.Text = System.DateTime.Now.Year.ToString() + System.DateTime.Now.Month.ToString() + System.DateTime.Now.Day.ToString() + System.DateTime.Now.Hour.ToString() + System.DateTime.Now.Minute.ToString() + System.DateTime.Now.Second.ToString();

            ds_debit=objaccins.GetDebitcards();
            debitcard.DataSource = ds_debit.Tables[0];
            debitcard.DataTextField = "debitcardno";
            debitcard.DataBind();

            ds_cheque = objaccins.Getchequebooks();
            chequeBookId.DataSource = ds_cheque.Tables[0];
            chequeBookId.DataTextField = "ChequeBookId";
            chequeBookId.DataBind();

            ds_branch = objaccins.Getbranchcards();
            branch.DataSource = ds_branch.Tables[0];
            branch.DataTextField = "Branchname";
            branch.DataValueField = "Branchcode";
            branch.DataBind();
        }
            strName =Request.QueryString["name"];
            strFName=Request.QueryString["fname"];
            strDOB=Request.QueryString["dob"];
            strage=Request.QueryString["age"];
            strMstatus = Request.QueryString["mstatus"];
            strcity = Request.QueryString["city"];
            strstate=Request.QueryString["state"];        
            strcountry=Request.QueryString["country"];
            strpincode=Request.QueryString["pincode"];
            straddress = Request.QueryString["address"];
            strphone=Request.QueryString["phone"];
            stremail = Request.QueryString["emailid"];
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
            
            objacc.accountno = AccountNumber.Text;
            objacc.address = straddress;
            objacc.age = strage;
            objacc.branchcode =branch.SelectedItem.Value;
            objacc.city = strcity;
            objacc.country = strcountry;
            objacc.dateofbirth = strDOB;
            try
            {
                objacc.debitcardno = debitcard.SelectedItem.Text;
            }
            catch
            {
                objacc.debitcardno = "";
            }
            objacc.emailid = stremail;
            objacc.fathers_name = strFName;
            objacc.name = strName;
            objacc.phone = strphone;
            objacc.pincode = strpincode;
            objacc.state = strstate;
            objacc.maritalstatus = strMstatus;
            objacc.accountType = AccountType.SelectedValue.ToString();
            try
            {
                objacc.chequebook = chequeBookId.SelectedValue.ToString();
            }
            catch
            {
                objacc.chequebook = "";
            }
            objaccins.accountinfo(objacc);
            //objacc.debitcardno = ddldebitcard.SelectedItem.Text;
            objacc.debitissuedate = System.DateTime.Today.ToShortDateString();
            DataSet ds = new DataSet();
            ds= objaccins.GetdateAdd(System.DateTime.Today);
            objacc.debitexpdate = (ds.Tables[0].Rows[0].ItemArray[0].ToString());
            objaccins.InsertDebitDetails(objacc);
            objacc.UserID = userid.Text;
            objacc.Password = password.Text;
            objacc.accountno = AccountNumber.Text;
            objaccins.AddUserDetails(objacc);
            MailMessage objmsg = new MailMessage();
            SmtpClient objc = new SmtpClient();
            MailAddress msgfrom = new MailAddress("raghus522@gmail.com");
            MailAddress msgto= new MailAddress(stremail);
            objmsg.To.Add(msgto);
            objmsg.From=msgfrom;
            objmsg.Body = "Hai YOur Account No is : " + AccountNumber.Text;
            objmsg.Subject = "Your Account No";
            objc.Host="ss2";
            objc.Send(objmsg);
            //MsgBox1.confirm("Successfully Record is inserted","res"); 
            Label6.Text = "Successfully Record is inserted";
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
            }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        objacc.accountno = AccountNumber.Text;
        objacc.address = straddress;
        objacc.age = strage;
        objacc.branchcode = branch.SelectedItem.Value;
        objacc.city = strcity;
        objacc.country = strcountry;
        objacc.dateofbirth = strDOB;
        try
        {
            objacc.debitcardno = debitcard.SelectedItem.Text;
        }
        catch
        {
            objacc.debitcardno = "";
        }
        objacc.emailid = stremail;
        objacc.fathers_name = strFName;
        objacc.name = strName;
        objacc.phone = strphone;
        objacc.pincode = strpincode;
        objacc.state = strstate;
        objacc.maritalstatus = strMstatus;
        objacc.accountType = AccountType.SelectedValue.ToString();
        try
        {
            objacc.chequebook = chequeBookId.SelectedItem.Text;
        }
        catch
        {
            objacc.chequebook = "";
        }
        objacc.balance = "500";
        objaccins.accountinfo(objacc);
        //objacc.debitcardno = ddldebitcard.SelectedItem.Text;
        objacc.debitissuedate = System.DateTime.Today.ToShortDateString();
        DataSet ds = new DataSet();
        ds = objaccins.GetdateAdd(System.DateTime.Today);
        objacc.debitexpdate = (ds.Tables[0].Rows[0].ItemArray[0].ToString());
        objaccins.InsertDebitDetails(objacc);
        objacc.UserID = userid.Text;
        objacc.Password = password.Text;
        objacc.accountno = AccountNumber.Text;
        objaccins.AddUserDetails(objacc);
        MailMessage objmsg = new MailMessage();
        SmtpClient objc = new SmtpClient();
        MailAddress msgfrom = new MailAddress("Bankingadmin@bank.com");
        MailAddress msgto = new MailAddress(stremail);
        objmsg.To.Add(msgto);
        objmsg.From = msgfrom;
        //objmsg.Body = "Hai YOur Account No is : " + AccountNumber.Text;
        objmsg.Body = "YOur Account No is:" + AccountNumber.Text ;
        objmsg.Subject = "Your Account Number Details";
        objc.Host = "ss2";
        objc.Send(objmsg);
        MsgBox1.confirm("Successfully Record is inserted", "res"); 

    }
}

