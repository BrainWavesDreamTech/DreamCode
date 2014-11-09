Imports Microsoft.VisualBasic
Imports System.Security.Cryptography

Public Class SecurityModule
    Function CreateHash(ByVal strSource As String) As String
        Dim bytHash As Byte()
        Dim uEncode As New UnicodeEncoding()
        'Store the source string in a byte array
        Dim bytSource() As Byte = uEncode.GetBytes(strSource)
        Dim sha1 As New SHA1CryptoServiceProvider()
        'Create the hash
        bytHash = sha1.ComputeHash(bytSource)
        'return as a base64 encoded string
        Return Convert.ToBase64String(bytHash)
    End Function
End Class
