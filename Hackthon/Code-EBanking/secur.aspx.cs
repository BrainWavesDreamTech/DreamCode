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
using System.Data.SqlClient;
using BankingClasses;
public partial class secur : System.Web.UI.Page
{
    BanksDataClasses objaccins = new BanksDataClasses();
    accountdata objacc = new accountdata();
    SecurityModule1 hash = new SecurityModule1();
    string EncryptField(string strSourceField, string strDestinationField,string pwd)
    {
        string strSQL;
        string strUsername;
        string strPlainText;
        string strCipherText="";
        strSQL = "Select Userid, " + strSourceField + " from userstable where Password='" + pwd +"'";
        SqlConnection cnRead = new SqlConnection(@"Data Source=PREETHAM\SQLEXPRESS;Initial Catalog=Ebanking;Integrated Security=True");
        SqlConnection cnWrite = new SqlConnection(@"Data Source=PREETHAM\SQLEXPRESS;Initial Catalog=Ebanking;Integrated Security=True");
        SqlCommand cmdRead = new SqlCommand(strSQL, cnRead);
        SqlCommand cmdWrite = new SqlCommand();
        cmdWrite.Connection = cnWrite;
        SqlDataReader dr;
        cnRead.Open();
        cnWrite.Open();
        dr = cmdRead.ExecuteReader();
        while (dr.Read())
        {
            strUsername = dr.GetString(0);
            strPlainText = dr.GetString(1);
            strCipherText = hash.CreateHash(strPlainText);
            strSQL = "UPDATE userstable SET " + strDestinationField + " ='" + strCipherText + "' WHERE Userid ='" + strUsername + "'";
            cmdWrite.CommandText = strSQL;
            cmdWrite.ExecuteNonQuery();
          
        }
            dr.Close();
            return strCipherText;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds_userids = new DataSet();
            ds_userids = objaccins.ViewUseridDetails();
            username.DataSource = ds_userids.Tables[0];
            username.DataTextField = "Userid";
            username.DataValueField = "Userid";
            username.DataBind();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
   
    protected void Encrypt_Click(object sender, EventArgs e)
    {
        CipherPassword.Text=EncryptField("Password", "PasswordHash",Password.Text);
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds_pwds = new DataSet();
        ds_pwds = objaccins.GetPasswordDetails(username.Text);
        Password.Text = ds_pwds.Tables[0].Rows[0].ItemArray[0].ToString();
        try
        {
            CipherPassword.Text = ds_pwds.Tables[0].Rows[0].ItemArray[1].ToString();
        }
        catch
        {
            CipherPassword.Text = "";
        }
    }
}
