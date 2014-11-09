<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="OrderChequeBook.aspx.cs" Inherits="OrderChequeBook" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp;&nbsp;<br />
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
    <table id="TABLE1" language="javascript" onclick="return TABLE1_onclick()" style="z-index: 100;
        left: 155px; position: relative; top: -45px">
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" ForeColor="Maroon" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Account Number" Width="124px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="AccountNumber" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Enabled="False" Style="position: relative"
                    Width="111px" OnTextChanged="AccountNumber_TextChanged" ></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Button ID="Button3" runat="server" BorderColor="#00C0C0" BorderStyle="Solid"
                  Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Enter" Width="73px" OnClick="Button3_Click" /></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" ForeColor="Maroon" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Old ChequeBookId" Width="149px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="oldcheque" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px" ForeColor="Blue"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 22px">
                <asp:Label ID="Label4" runat="server" ForeColor="Maroon" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="New ChequeBookId" Width="149px"></asp:Label></td>
            <td style="width: 100px; height: 22px">
                <asp:DropDownList ID="newchequebookid" runat="server" BackColor="AliceBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Width="114px">
                </asp:DropDownList></td>
            <td style="width: 100px; height: 22px">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 24px">
                &nbsp;<asp:Button ID="Button1" runat="server" BorderColor="#00C0C0" BorderStyle="Solid"
                   Style="z-index: 100; left: 49px; position: relative;
                    top: 0px" Text="Change" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" BorderColor="#00C0C0" BorderStyle="Solid"
                  Style="z-index: 102; left: 88px; position: relative;
                    top: 0px" Text="Reset" Width="73px" /></td>
            <td colspan="1" style="height: 24px">
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

