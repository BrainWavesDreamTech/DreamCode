<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="secur.aspx.cs" Inherits="secur" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
<!--

function TABLE1_onclick() {

}

// -->
</script>

    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <form id="form1" runat="server">
    <table id="TABLE1" style="z-index: 100; left: 61px; position: relative; top: 6px" language="javascript" onclick="return TABLE1_onclick()">
        <tr>
            <td style="width: 105px">
                <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="UserName"></asp:Label></td>
            <td style="width: 71px">
                <asp:DropDownList ID="username" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    Style="z-index: 100; left: 0px; position: relative; top: 0px" Width="116px">
                </asp:DropDownList></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 105px">
                <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Password"></asp:Label></td>
            <td style="width: 71px">
                <asp:TextBox ID="Password" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px" ForeColor="#8080FF"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 105px">
            </td>
            <td style="width: 71px">
                <asp:Button ID="Encrypt" runat="server" OnClick="Encrypt_Click" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Encrypt" /></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 105px; height: 20px">
                <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Cipher Password"></asp:Label></td>
            <td style="width: 71px; height: 20px">
                <asp:TextBox ID="CipherPassword" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px; height: 20px">
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

