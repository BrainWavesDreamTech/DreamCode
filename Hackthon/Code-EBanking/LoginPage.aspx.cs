using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Text;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using BankingClasses;

public partial class LoginPage : System.Web.UI.Page
{
    BanksDataClasses objaccins = new BanksDataClasses();
    accountdata objacc = new accountdata();
    SecurityModule1 hash = new SecurityModule1();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Request.Form["res1"] == "1")   //if user clicks "OK" to confirm 
        //{
        //    Request.Form["res1"].Replace("1", "0");
        //    //Reset the hidden field back to original value "0"

        //    Response.Redirect("AccountNumbers.aspx");
        //    //Put the continuing processing code 

        //}  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Transfer_Click(object sender, EventArgs e)
    {
        
        DataSet ds_user = new DataSet();
        objacc.UserID = userid.Text;
        objacc.Password =Password.Text;
        ds_user=objaccins.CheckUserDetails(objacc);
        try
        {
            if (ds_user.Tables[0].Rows[0].ItemArray[0].Equals(""))
            {
                Response.Redirect("Invalid User");
            }

            else if (ds_user.Tables[0].Rows[0].ItemArray[0].Equals("admin") && ds_user.Tables[0].Rows[0].ItemArray[1].Equals("admin"))
            {
                Session["Accno"] = ds_user.Tables[0].Rows[0].ItemArray[2].ToString();
                Session["UserName"] = ds_user.Tables[0].Rows[0].ItemArray[0].ToString();
                //MsgBox1.confirm("Your Account Number is : " + Session["Accno"].ToString(),"res1");
                Response.Redirect("AccountNumbers.aspx");
            }
            else
            {
                string strPlainText = Password.Text;
                string strCipherText = hash.CreateHash(strPlainText);
                DataSet ds_cipher = new DataSet();
                ds_cipher = objaccins.GetCipherPassword(userid.Text, Password.Text);
                if (strCipherText == ds_cipher.Tables[0].Rows[0].ItemArray[0].ToString())
                {
                    Application["Accno"] = ds_user.Tables[0].Rows[0].ItemArray[2].ToString();
                    Session["Accno"] = ds_user.Tables[0].Rows[0].ItemArray[2].ToString();
                    string str = Session["Accno"].ToString();
                    Session["UserName"] = ds_user.Tables[0].Rows[0].ItemArray[0].ToString();
                    //MsgBox1.confirm("Your Account Number is : " + Session["Accno"].ToString(),"res1");
                    Response.Redirect("CustomerHome.aspx?acc=" + Session["Accno"].ToString());
                }
            }
        }
        catch
        {
            Response.Write("Wrong Password");
        }
    }


    protected void Reset_Click(object sender, EventArgs e)
    {
        userid.Text = "";
        Password.Text = "";
    }
}
