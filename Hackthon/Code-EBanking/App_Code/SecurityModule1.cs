using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Text;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Security.Cryptography;
using System.Security.AccessControl;
using System.Net;

/// <summary>
/// Summary description for Security
/// </summary>
public class SecurityModule1
{

    public string CreateHash(string strSource)
    {
        byte[] bytHash;
        UnicodeEncoding uEncode = new System.Text.UnicodeEncoding();
        byte[] bytSource = uEncode.GetBytes(strSource);
        SHA1CryptoServiceProvider sha1 = new SHA1CryptoServiceProvider();
        bytHash = sha1.ComputeHash(bytSource);
        return Convert.ToBase64String(bytHash);
    }
}
