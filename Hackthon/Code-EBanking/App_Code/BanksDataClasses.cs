using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data;
using System.Data.SqlClient;


/// <summary>
/// Summary description for BankDataClasses
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class BanksDataClasses : System.Web.Services.WebService  {

    SqlConnection conn = new SqlConnection(@"Data Source=PREETHAM\SQLEXPRESS;Initial Catalog=Ebanking;Integrated Security=True");
    public BanksDataClasses () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld(string a,string b) {
        return a+b;
    }

    [WebMethod]
     public void accountinfo(accountdata AD)
     {

      
       SqlParameter[] para_pd = 
             {
                 new SqlParameter("@Name",SqlDbType.VarChar,50),
                 new SqlParameter("@Fathers_name",SqlDbType.VarChar,50),
                 new SqlParameter("@dateofbirth",SqlDbType.VarChar,50),
                 new SqlParameter("@age",SqlDbType.VarChar,50),
                 new SqlParameter("@maritalstatus",SqlDbType.VarChar,50),
                 new SqlParameter("@address",SqlDbType.VarChar,50),
                 new SqlParameter("@city",SqlDbType.VarChar,50),
                 new SqlParameter("@state",SqlDbType.VarChar,50),
                 new SqlParameter("@country",SqlDbType.VarChar,50),
                 new SqlParameter("@pincode",SqlDbType.VarChar,50),
                 new SqlParameter("@phone",SqlDbType.VarChar,50),
                 new SqlParameter("@emailid",SqlDbType.VarChar,50),
                 new SqlParameter("@debitcardno",SqlDbType.VarChar,50),
                 new SqlParameter("@branchcode",SqlDbType.VarChar,50),
                 new SqlParameter("@typecode",SqlDbType.VarChar,50),
                 new SqlParameter("@accountno",SqlDbType.VarChar,50),
                 new SqlParameter("@chequeBookid",SqlDbType.NVarChar,50),
                 new SqlParameter("@balance",SqlDbType.NVarChar,50)
               };
     
            para_pd[0].Value = AD.name.Trim().ToString();
            para_pd[1].Value = AD.fathers_name.Trim().ToString();
            para_pd[2].Value = AD.dateofbirth.Trim().ToString();
            para_pd[3].Value = AD.age.Trim().ToString();
            para_pd[4].Value = AD.maritalstatus.Trim().ToString();
            para_pd[5].Value = AD.address.Trim().ToString();
            para_pd[6].Value = AD.city.Trim().ToString();
            para_pd[7].Value = AD.state.Trim().ToString();
            para_pd[8].Value = AD.country.Trim().ToString();
            para_pd[9].Value = AD.pincode.Trim().ToString();
            para_pd[10].Value = AD.phone.Trim().ToString();
            para_pd[11].Value = AD.emailid.Trim().ToString();
            para_pd[12].Value = AD.debitcardno.Trim().ToString();
            para_pd[13].Value = AD.branchcode.Trim().ToString();
            para_pd[14].Value = AD.accountType.Trim().ToString();
            para_pd[15].Value = AD.accountno.Trim().ToString();
            para_pd[16].Value = AD.chequebook.Trim().ToString();
            para_pd[17].Value = AD.balance.Trim().ToString();
            conn.Close();
            conn.Open();
              
        SqlDataAdapter ad = new SqlDataAdapter("PRO_ACCOUNTINFOINSERT", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        for (int i = 0; i < para_pd.Length; i++)
        {
            ad.SelectCommand.Parameters.Add(para_pd[i]);
        }
        ad.SelectCommand.ExecuteNonQuery();
              
    }
    [WebMethod]
    public void Updateaccountinfo(accountdata AD)
    {


    
        SqlParameter[] para_pd = 
             {
                
                 new SqlParameter("@Name",SqlDbType.VarChar,50),
                 new SqlParameter("@Fathers_name",SqlDbType.VarChar,50),
                 new SqlParameter("@dateofbirth",SqlDbType.VarChar,50),
                 new SqlParameter("@age",SqlDbType.VarChar,50),
                 new SqlParameter("@maritalstatus",SqlDbType.VarChar,50),
                 new SqlParameter("@address",SqlDbType.VarChar,50),
                 new SqlParameter("@city",SqlDbType.VarChar,50),
                 new SqlParameter("@state",SqlDbType.VarChar,50),
                 new SqlParameter("@country",SqlDbType.VarChar,50),
                 new SqlParameter("@pincode",SqlDbType.VarChar,50),
                 new SqlParameter("@phone",SqlDbType.VarChar,50),
                 new SqlParameter("@emailid",SqlDbType.VarChar,50),
                 new SqlParameter("@Accountno",SqlDbType.NVarChar,50)
                
               };

        para_pd[0].Value = AD.name.Trim().ToString();
        para_pd[1].Value = AD.fathers_name.Trim().ToString();
        para_pd[2].Value = AD.dateofbirth.Trim().ToString();
        para_pd[3].Value = AD.age.Trim().ToString();
        para_pd[4].Value = AD.maritalstatus.Trim().ToString();
        para_pd[5].Value = AD.address.Trim().ToString();
        para_pd[6].Value = AD.city.Trim().ToString();
        para_pd[7].Value = AD.state.Trim().ToString();
        para_pd[8].Value = AD.country.Trim().ToString();
        para_pd[9].Value = AD.pincode.Trim().ToString();
        para_pd[10].Value = AD.phone.Trim().ToString();
        para_pd[11].Value = AD.emailid.Trim().ToString();
        para_pd[12].Value = AD.accountno.Trim().ToString();
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_ACCOUNTINFOUPDATE", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        for (int i = 0; i < para_pd.Length; i++)
        {
            ad.SelectCommand.Parameters.Add(para_pd[i]);
        }
        ad.SelectCommand.ExecuteNonQuery();
    }
    [WebMethod]
    public DataSet GetAccData(string AccountNo)
    {
        SqlParameter Para_accno = new SqlParameter("@AccountNo", SqlDbType.NVarChar, 50);
        Para_accno.Value = AccountNo;
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_GETACCDATA",conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        ad.SelectCommand.Parameters.Add(Para_accno);
        DataSet ds = new DataSet();
        ad.Fill(ds, "AccData");
        return ds;
    }
    [WebMethod]
    public DataSet GetdateAdd(DateTime sdate)
    {
        SqlParameter Para_date = new SqlParameter("@sdate", SqlDbType.DateTime, 50);
        Para_date.Value = sdate;
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRODATEADDDEBIT", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        ad.SelectCommand.Parameters.Add(Para_date);
        DataSet ds = new DataSet();
        ad.Fill(ds, "DateData");
        return ds;
    }
    [WebMethod]
    public DataSet GetDebitcards()
    {
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_GETDEBITCARDS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        ad.Fill(ds, "DateData");
        return ds;
    }
    [WebMethod]
    public DataSet  Getbranchcards()
    {
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_GETBRANCHES", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        ad.Fill(ds, "BranchData");
        return ds;
    }
    [WebMethod]
    public DataSet Getchequebooks()
    {
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_GETCHEQUES", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        ad.Fill(ds, "ChequeData");
        return ds;
    }

    [WebMethod]
    public void InsertDebitDetails(accountdata AD)
    {


        SqlParameter[] para_pd = 
             {
                 new SqlParameter("@debitcardno",SqlDbType.VarChar,50),
                 new SqlParameter("@debitissdate",SqlDbType.VarChar,50),
                 new SqlParameter("@debitExpDate",SqlDbType.VarChar,50),
                };

        para_pd[0].Value = AD.debitcardno.Trim().ToString();
        para_pd[1].Value = AD.debitissuedate.Trim().ToString();
        para_pd[2].Value = AD.debitexpdate.Trim().ToString();
        conn.Close();
        conn.Open();

        SqlDataAdapter ad = new SqlDataAdapter("PRO_INSERTDEBITDETAILS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        for (int i = 0; i < para_pd.Length; i++)
        {
            ad.SelectCommand.Parameters.Add(para_pd[i]);
        }
        ad.SelectCommand.ExecuteNonQuery();

    }
   
    [WebMethod]
    public void AddUserDetails(accountdata AD)
    {


        SqlParameter[] para_pd = 
             {
                 new SqlParameter("@UserID",SqlDbType.VarChar,50),
                 new SqlParameter("@Password",SqlDbType.VarChar,50),
                 new SqlParameter("@AccNo",SqlDbType.VarChar,50),
                };

        para_pd[0].Value = AD.UserID.Trim().ToString();
        para_pd[1].Value = AD.Password.Trim().ToString();
        para_pd[2].Value = AD.accountno.Trim().ToString();
        conn.Close();
        conn.Open();

        SqlDataAdapter ad = new SqlDataAdapter("PRO_ADDUSERDETAILS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        for (int i = 0; i < para_pd.Length; i++)
        {
            ad.SelectCommand.Parameters.Add(para_pd[i]);
        }
        ad.SelectCommand.ExecuteNonQuery();

    }

    [WebMethod]
    public DataSet ViewUserDetails()
    {
        SqlDataAdapter ad = new SqlDataAdapter("PRO_VIEWUSERDETAILS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        ad.Fill(ds, "Users");
        return ds;
    }

     [WebMethod]
    public DataSet ViewchequeRequestsDetails()
    {
        SqlDataAdapter ad = new SqlDataAdapter("PRO_VIEWCHEQUEREQUESTDETAILS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        ad.Fill(ds, "Requests");
        return ds;
    }
  
    [WebMethod]
    public DataSet Viewoldcheques(string AccountNo)
    {
        SqlDataAdapter ad = new SqlDataAdapter("PRO_VIEWOLDCHEQUES1", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        SqlParameter para_accno = new SqlParameter("@AccountNo", SqlDbType.VarChar, 50);
        para_accno.Value = AccountNo;
        ad.SelectCommand.Parameters.Add(para_accno);
        DataSet ds = new DataSet();
        ad.Fill(ds, "Requests");
        return ds;
    }


    [WebMethod]
    public void updatechequedetails(string AccountNo,string newchequeid,string oldchequeid)
    {
        //conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_UPDATECHEQUES", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        SqlParameter para_accno = new SqlParameter("@AccountNo", SqlDbType.VarChar, 50);
        para_accno.Value = AccountNo;
        SqlParameter para_nchequeid = new SqlParameter("@newchequeid", SqlDbType.VarChar, 50);
        para_nchequeid.Value = newchequeid;
        SqlParameter para_ochequeid= new SqlParameter("@oldchequeid", SqlDbType.VarChar, 50);
        para_ochequeid.Value = oldchequeid;
        ad.SelectCommand.Parameters.Add(para_accno);
        ad.SelectCommand.Parameters.Add(para_nchequeid);
        ad.SelectCommand.Parameters.Add(para_ochequeid);
        ad.SelectCommand.ExecuteNonQuery();
        conn.Close();
    }
    [WebMethod]
    public DataSet CheckUserDetails(accountdata AD)
    {
        conn.Open();
        SqlParameter[] para_pd = 
             {
                 new SqlParameter("@UserID",SqlDbType.VarChar,50),
                 new SqlParameter("@Password",SqlDbType.VarChar,50),
             };

        para_pd[0].Value = AD.UserID.Trim().ToString();
        para_pd[1].Value = AD.Password.Trim().ToString();
        conn.Close();
        conn.Open();

        SqlDataAdapter ad = new SqlDataAdapter("PRO_CHECKUSERDETAILS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        for (int i = 0; i < para_pd.Length; i++)
        {
            ad.SelectCommand.Parameters.Add(para_pd[i]);
        }
        ad.Fill(ds, "as");
        return ds;
    }
    [WebMethod]
    public DataSet GetBalanceDetails(accountdata AD)
    {
        SqlParameter[] para_pd = 
             {
                 new SqlParameter("@AccountNo",SqlDbType.VarChar,50),
                 new SqlParameter("@AccountType",SqlDbType.VarChar,50),
             };

        para_pd[0].Value = AD.accountno.Trim().ToString();
        para_pd[1].Value = AD.accountType.Trim().ToString();
        conn.Close();
        conn.Open();

        SqlDataAdapter ad = new SqlDataAdapter("PRO_GETBALANCEDETAILS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        for (int i = 0; i < para_pd.Length; i++)
        {
            ad.SelectCommand.Parameters.Add(para_pd[i]);
        }
        ad.Fill(ds, "as");
        return ds;
    }

    [WebMethod]
    public DataSet GetTransactionDetails(accountdata AD)
    {
        SqlParameter[] para_pd = 
             {
                 new SqlParameter("@AccountNo",SqlDbType.VarChar,50),
                 new SqlParameter("@AccountType",SqlDbType.VarChar,50),
             };

        para_pd[0].Value = AD.accountno.Trim().ToString();
        para_pd[1].Value = AD.accountType.Trim().ToString();
        conn.Close();
        conn.Open();

        SqlDataAdapter ad = new SqlDataAdapter("PRO_GETTRANSACTIONDETAILS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        for (int i = 0; i < para_pd.Length; i++)
        {
            ad.SelectCommand.Parameters.Add(para_pd[i]);
        }
        ad.Fill(ds, "ts");
        return ds;
    }

    [WebMethod]
    public DataSet GetAccountDetails(string accno)
    {
        conn.Close();
        conn.Open();
        SqlParameter para = new SqlParameter("@accno", SqlDbType.NVarChar, 40);
        para.Value = accno;
        SqlDataAdapter ad = new SqlDataAdapter("PRO_GETACCDETAILS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        ad.SelectCommand.Parameters.Add(para);
        ad.Fill(ds, "acc");
        return ds;
    }
    [WebMethod]
    public DataSet GetBalance(string accno)
    {
        conn.Close();
        conn.Open();
        SqlParameter para = new SqlParameter("@accno", SqlDbType.NVarChar, 40);
        para.Value = accno;
        SqlDataAdapter ad = new SqlDataAdapter("PRO_GETBALANCE", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        ad.SelectCommand.Parameters.Add(para);
        DataSet ds = new DataSet();
        ad.Fill(ds, "bal");
        return ds;
    }

    [WebMethod]
    public void settransaction(accountdata AD)
    {
        
        SqlParameter[] para_pd = 
             {
                
                 new SqlParameter("@transid",SqlDbType.VarChar,50),
                 new SqlParameter("@faccountno",SqlDbType.VarChar,50),
                 new SqlParameter("@toaccountno",SqlDbType.VarChar,50),
                 new SqlParameter("@typecode",SqlDbType.VarChar,50),
                 new SqlParameter("@debit",SqlDbType.VarChar,50),
                 new SqlParameter("@credit",SqlDbType.VarChar,50),
                 new SqlParameter("@transtype",SqlDbType.VarChar,50),
                 new SqlParameter("@balance",SqlDbType.VarChar,50),
                 new SqlParameter("@Transdate",SqlDbType.VarChar,50),
                 new SqlParameter("@status",SqlDbType.VarChar,50),
                 new SqlParameter("@desc",SqlDbType.VarChar,50),
                 new SqlParameter("@branchcode",SqlDbType.VarChar,50)
              };

        para_pd[0].Value = AD.Transid.Trim().ToString();
        para_pd[1].Value = AD.fromaccno.Trim().ToString();
        para_pd[2].Value = AD.toaccno.Trim().ToString();
        para_pd[3].Value = AD.typecode.Trim().ToString();
        para_pd[4].Value = AD.debit.Trim().ToString();
        para_pd[5].Value = AD.credit.Trim().ToString();
        para_pd[6].Value = AD.TransType.Trim().ToString();
        para_pd[7].Value = AD.balance.Trim().ToString();
        para_pd[8].Value = AD.TransDate.Trim().ToString();
        para_pd[9].Value = AD.status.Trim().ToString();
        para_pd[10].Value = AD.desc.Trim().ToString();
        para_pd[11].Value = AD.branchcode.Trim().ToString();
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_SETTRANSACTION", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        for (int i = 0; i < para_pd.Length; i++)
        {
            ad.SelectCommand.Parameters.Add(para_pd[i]);
        }
        ad.SelectCommand.ExecuteNonQuery();
    }
    [WebMethod]
    public void setselftransaction(accountdata AD)
    {

        SqlParameter[] para_pd = 
             {
                
                 new SqlParameter("@transid",SqlDbType.VarChar,50),
                 new SqlParameter("@faccountno",SqlDbType.VarChar,50),
                 new SqlParameter("@toaccountno",SqlDbType.VarChar,50),
                 new SqlParameter("@typecode",SqlDbType.VarChar,50),
                 new SqlParameter("@debit",SqlDbType.VarChar,50),
                 new SqlParameter("@credit",SqlDbType.VarChar,50),
                 new SqlParameter("@transtype",SqlDbType.VarChar,50),
                 new SqlParameter("@balance",SqlDbType.VarChar,50),
                 new SqlParameter("@Transdate",SqlDbType.VarChar,50),
                 new SqlParameter("@status",SqlDbType.VarChar,50),
                 new SqlParameter("@desc",SqlDbType.VarChar,50),
                 new SqlParameter("@branchcode",SqlDbType.VarChar,50)
              };

        para_pd[0].Value = AD.Transid.Trim().ToString();
        para_pd[1].Value = AD.fromaccno.Trim().ToString();
        para_pd[2].Value = AD.toaccno.Trim().ToString();
        para_pd[3].Value = AD.typecode.Trim().ToString();
        para_pd[4].Value = AD.debit.Trim().ToString();
        para_pd[5].Value = AD.credit.Trim().ToString();
        para_pd[6].Value = AD.TransType.Trim().ToString();
        para_pd[7].Value = AD.balance.Trim().ToString();
        para_pd[8].Value = AD.TransDate.Trim().ToString();
        para_pd[9].Value = AD.status.Trim().ToString();
        para_pd[10].Value = AD.desc.Trim().ToString();
        para_pd[11].Value = AD.branchcode.Trim().ToString();
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_SETSELFTRANSACTION", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        for (int i = 0; i < para_pd.Length; i++)
        {
            ad.SelectCommand.Parameters.Add(para_pd[i]);
        }
        ad.SelectCommand.ExecuteNonQuery();
    }


    [WebMethod]
    public DataSet GetBranchDetails(string AccountNo)
    {
        SqlParameter Para_accno = new SqlParameter("@AccountNo", SqlDbType.NVarChar, 50);
        Para_accno.Value = AccountNo;
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_GETBRANCHDATAILS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        ad.SelectCommand.Parameters.Add(Para_accno);
        DataSet ds = new DataSet();
        ad.Fill(ds, "branchData");
        return ds;
    }
   
     [WebMethod]
    public DataSet GetbraccountDetails(string branchcode)
    {
        SqlParameter Para_brcode = new SqlParameter("@branchcode", SqlDbType.NVarChar, 50);
        Para_brcode.Value = branchcode;
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_GETBRAACCDETAILS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        ad.SelectCommand.Parameters.Add(Para_brcode);
        DataSet ds = new DataSet();
        ad.Fill(ds, "branchData");
        return ds;
    }


    [WebMethod]
    public DataSet Viewoldacccheques(string AccountNo)
    {
        SqlDataAdapter ad = new SqlDataAdapter("PRO_VIEWACCOLDCHEQUES", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        SqlParameter para_accno = new SqlParameter("@AccountNo", SqlDbType.VarChar, 50);
        para_accno.Value = AccountNo;
        ad.SelectCommand.Parameters.Add(para_accno);
        DataSet ds = new DataSet();
        ad.Fill(ds, "Requests");
        return ds;
    }

    [WebMethod]
    public void InsertchequeRequests(accountdata AD)
    {


        SqlParameter[] para_pd = 
             {
                 new SqlParameter("@Accountno",SqlDbType.VarChar,50),
                 new SqlParameter("@name1",SqlDbType.VarChar,50),
                 new SqlParameter("@oldchequebookid",SqlDbType.VarChar,50),
                  new SqlParameter("@RequestDate",SqlDbType.DateTime,50),
                  new SqlParameter("@status",SqlDbType.VarChar,60)
                };

        para_pd[0].Value = AD.accountno.Trim().ToString();
        para_pd[1].Value = AD.name1.Trim().ToString();
        para_pd[2].Value = AD.oldchequebookid.Trim().ToString();
        para_pd[3].Value = AD.RequestDate.Trim().ToString();
        para_pd[4].Value = AD.status.Trim().ToString();
        conn.Close();
        conn.Open();

        SqlDataAdapter ad = new SqlDataAdapter("PRO_INSERTCHEQUEBOOKREQUESTS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        for (int i = 0; i < para_pd.Length; i++)
        {
            ad.SelectCommand.Parameters.Add(para_pd[i]);
        }
        ad.SelectCommand.ExecuteNonQuery();

    }
    [WebMethod]
    public DataSet GetCipherPassword(string userid,string password)
    {
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_GETCIPHERPWD", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        SqlParameter[] para_pd = 
             {
                 new SqlParameter("@userid",SqlDbType.VarChar,50),
                 new SqlParameter("@password",SqlDbType.VarChar,50),
             };

        para_pd[0].Value = userid;
        para_pd[1].Value = password;
        ad.SelectCommand.Parameters.Add(para_pd[0]);
        ad.SelectCommand.Parameters.Add(para_pd[1]);
        conn.Close();
        conn.Open();
        DataSet ds = new DataSet();
        ad.Fill(ds, "Cipherpwd");
        return ds;
    }
    [WebMethod]
    public DataSet ViewUseridDetails()
    {
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_VIEWUSERIDS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        conn.Close();
        conn.Open();
        DataSet ds = new DataSet();
        ad.Fill(ds, "userids");
        return ds;
    }

    [WebMethod]
    public DataSet GetPasswordDetails(string userid)
    {
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_GETPASSWORDDETAILS", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        SqlParameter[] para_pd = 
             {
                 new SqlParameter("@userid",SqlDbType.VarChar,50),
               
             };
        para_pd[0].Value = userid;      
        ad.SelectCommand.Parameters.Add(para_pd[0]);
        conn.Close();
        conn.Open();
        DataSet ds = new DataSet();
        ad.Fill(ds, "rpwd");
        return ds;
    }
    [WebMethod]
    public void InvestmentInfo(accountdata AD)
    {


        SqlParameter[] para_pd = 
             {
                 new SqlParameter("@Name",SqlDbType.VarChar,50),
                 new SqlParameter("@address1",SqlDbType.VarChar,50),
                 new SqlParameter("@address2",SqlDbType.VarChar,50),
                 new SqlParameter("@city",SqlDbType.VarChar,50),
                 new SqlParameter("@state",SqlDbType.VarChar,50),
                 new SqlParameter("@country",SqlDbType.VarChar,50),
                 new SqlParameter("@pincode",SqlDbType.VarChar,50),
                 new SqlParameter("@phone",SqlDbType.VarChar,50),
                 new SqlParameter("@emailid",SqlDbType.VarChar,50),
                 new SqlParameter("@Loantype",SqlDbType.VarChar,50),
                 new SqlParameter("@Amount",SqlDbType.NVarChar,50)
               };

        para_pd[0].Value = AD.name.Trim().ToString();
        para_pd[1].Value = AD.address1.Trim().ToString();
        para_pd[2].Value = AD.address2.Trim().ToString();
        para_pd[3].Value = AD.city.Trim().ToString();
        para_pd[4].Value = AD.state.Trim().ToString();
        para_pd[5].Value = AD.country.Trim().ToString();
        para_pd[6].Value = AD.pincode.Trim().ToString();
        para_pd[7].Value = AD.phone.Trim().ToString();
        para_pd[8].Value = AD.emailid.Trim().ToString();
        para_pd[9].Value = AD.LoanType.Trim().ToString();
        para_pd[10].Value = AD.amount.Trim().ToString();
        conn.Close();
        conn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("PRO_INVESTMENTINSERT", conn);
        ad.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        for (int i = 0; i < para_pd.Length; i++)
        {
            ad.SelectCommand.Parameters.Add(para_pd[i]);
        }
        ad.SelectCommand.ExecuteNonQuery();

    }
}

