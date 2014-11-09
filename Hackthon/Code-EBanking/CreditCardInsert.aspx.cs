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

public partial class CreditCardInsert : System.Web.UI.Page
{

    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        //EXE_TARGET1 ET = new EXE_TARGET1();
        //if (!IsPostBack == true)
        //{
        //    ds = ET.GET_EXE_CODE();

        //    //Retrieve the value of exe_code from the table EXE_CONFIRM//

        //    DropDownList1.DataValueField = "EXE_CODE";
        //    DropDownList1.DataSource = ds.Tables["EXE_CONFIRM"];
        //    DropDownList1.DataBind();
        //    DropDownList1.Items.Insert(0, "[SELECT ONE]");
        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            //CREDIT_CARD_APP CAP = new CREDIT_CARD_APP();
            //CREDIT_APP CA = new CREDIT_APP();
            //CA.CCAPP_NO = TXT_CREDIT.Text;
            //CA.CAPP_DATE = TXT_APP_DATE.Text;
            //CA.NAME = TXT_NAME_C.Text;
            //CA.DOB = TXT_D_BIRTH.Text;
            //CA.CARD_TYPE = DDL_ACC.Text;
            //CA.EXE_CODE = DropDownList1.Text;
            //CA.NOM_NAME = TXT_N_NAME.Text;
            //CA.RELATION = TXT_RELATION.Text;
            //CA.GENDER = R_GENDER.SelectedItem.Text;
            //CA.M_STATUS = R_M_STATUS.SelectedItem.Text;
            //CA.ADDRESS = TXT_ADDRESS.Text;
            //CA.STATE = TXT_STATE.Text;
            //CA.CITY = TXT_CITY.Text;
            //CA.COUNTRY = TXT_COUNTRY.Text;
            //CA.PINCODE = TXT_PINCODE.Text;
            //CA.PHONE = TXT_PHONE.Text;
            //CA.DEPOSIT = TXT_DEPOSIT.Text;
            //CA.CARD_NAME = DDL_CARD_NAME.SelectedItem.Text;
            //CA.EMAIL = TXT_EMAIL.Text;
            //CAP.CREDIT_INFO(CA); 
    }
}
