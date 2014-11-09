Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim hash As New SecurityModule1
    Sub EncryptField(ByVal strSourceField As String, _
              ByVal strDestinationField As String)
        Dim strSQL, strUsername, strPlainText, strCipherText As String
        strSQL = "Select Username, " & strSourceField & " from Employee"
        Dim cnRead As New SqlConnection("Initial Catalog=Ebanking;Data Source=SYS\SQLEXPRESS;Integrated Security=true")
        Dim cnWrite As New SqlConnection("Initial Catalog=Ebanking;Data Source=SYS\SQLEXPRESS;Integrated Security=true")
        Dim cmdRead As New SqlCommand(strSQL, cnRead)
        Dim cmdWrite As New SqlCommand()
        cmdWrite.Connection = cnWrite
        Dim dr As SqlDataReader
        'Open two connections, 
        'one for reading and the other for writing
        cnRead.Open()
        cnWrite.Open()
        dr = cmdRead.ExecuteReader()
        'Loop through the table, reading strings
        'encrypting and writing them back
        While dr.Read
            strUsername = dr.GetString(0)
            strPlainText = dr.GetString(1)
            strCipherText = hash.CreateHash(strPlainText)
            strSQL = "UPDATE Employee SET " & strDestinationField & " ='" & _
            strCipherText & "' WHERE Username ='" & strUsername & "'"
            cmdWrite.CommandText = strSQL
            cmdWrite.ExecuteNonQuery()
            Response.Write(LSet(strPlainText, 16) & strCipherText)
        End While
        Response.Write(vbCrLf & "Press <Enter> to continue>")
        'Console.ReadLine()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        EncryptField("Password", "PasswordHash")
    End Sub
End Class
