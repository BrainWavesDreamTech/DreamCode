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
public partial class ViewChequeRequests : System.Web.UI.Page
{
    BanksDataClasses objaccins = new BanksDataClasses();
    accountdata objacc = new accountdata();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds_requests = new DataSet();
        ds_requests = objaccins.ViewchequeRequestsDetails();
        DataGrid1.DataSource = ds_requests.Tables[0];
        DataGrid1.DataBind();
    }
}
