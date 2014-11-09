<%@ Page Language="C#" MasterPageFile="~/CustomerPage.master" AutoEventWireup="true" CodeFile="creditpayment.aspx.cs" Inherits="creditpayment" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" ForeColor="Navy" Style="z-index: 100; left: -7px;
        position: relative; top: 13px" Text="Credit Payments"></asp:Label>
    <table style="z-index: 100; left: 105px; position: relative; top: 58px">
        <tr>
            <td colspan="3">
                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 100; left: 98px;
                    position: relative; top: 0px">From Citi Credit Card</asp:HyperLink></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:HyperLink ID="HyperLink2" runat="server" Style="z-index: 100; left: 89px; position: relative;
                    top: 0px">From any Other Credit  Card</asp:HyperLink></td>
        </tr>
    </table>
</asp:Content>

