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

public partial class Default8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Service objser = new Service();
        //SqlConnection con = new SqlConnection(objser.GetSqlConnection("sa", "sa", "ebanking", "ss"));
        //con.Open();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            
            Response.Redirect("AssignAccountNo.aspx?name=" + Name.Value + "&fname=" + fathersname.Value + "&DOB=" + Dob.Text + "&age=" + Age.Value + "&mstatus=" + MaritalStatus.Value + "&address=" + Address.Text + "&city=" + City.Value + "&state=" + State.Value + "&country=" + Country.Value + "&pincode=" + Pincode.Value + "&phone=" + PhoneNumber.Value + "&emailid=" + Email.Value);
        }
        catch (Exception ex)
        {
            Label1.Text=ex.Message;
        }
    }
   
}
