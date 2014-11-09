<%@ Page Language="C#" MasterPageFile="~/CustomerPage.master" AutoEventWireup="true" CodeFile="AccountInformation.aspx.cs" Inherits="AccountInformation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" ForeColor="Blue" Style="z-index: 100; left: 0px;
        position: relative; top: 0px" Text="Account Information"></asp:Label><br />
    <br />
    <br />
    <table style="z-index: 100; left: 7px; position: relative; top: -21px">
        <tr>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 170px; height: 16px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AccountBalance.aspx"
                    Style="z-index: 100; left: 11px; position: relative; top: 0px" Width="117px">Account Balance</asp:HyperLink></td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 170px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 170px; height: 16px">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AccountStatement.aspx"
                    Style="z-index: 100; left: 8px; position: relative; top: -4px" Width="209px">Account Statement</asp:HyperLink></td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
    </table>
</asp:Content>

