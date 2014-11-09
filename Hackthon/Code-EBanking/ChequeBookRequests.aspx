<%@ Page Language="C#" MasterPageFile="~/CustomerPage.master" AutoEventWireup="true" CodeFile="ChequeBookRequests.aspx.cs" Inherits="ChequeBookRequests" Title="Untitled Page" %>
<asp:Content ID="ChequeBookRequest" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <form id="forma1" runat="server">
    <table style="z-index: 100; left: 106px; position: relative; top: 70px">
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="AccountNo"></asp:Label></td>
            <td style="width: 100px; height: 16px">
                <asp:TextBox ID="Accountno" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px; height: 16px">
                <asp:Button ID="press" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Click" OnClick="press_Click" /></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="OldChequeBookID"></asp:Label></td>
            <td style="width: 100px; height: 16px">
                <asp:TextBox ID="oldchequebookid" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
                <asp:Button ID="Request1" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Request" OnClick="Request1_Click" /></td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

