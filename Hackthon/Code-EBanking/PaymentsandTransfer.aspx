<%@ Page Language="C#" MasterPageFile="~/CustomerPage.master" AutoEventWireup="true" CodeFile="PaymentsandTransfer.aspx.cs" Inherits="PaymentsandTransfer" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" ForeColor="Blue" Style="z-index: 100; left: 0px;
        position: relative; top: 0px" Text="Account Information"></asp:Label><table style="z-index: 100;
            left: 90px; position: relative; top: 54px">
            <tr>
                <td style="width: 100px; height: 16px">
                </td>
                <td style="width: 170px; height: 16px">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AccountBalance.aspx" Style="z-index: 100;
                        left: 17px; position: relative; top: -1px" Width="117px">Account Balance</asp:HyperLink></td>
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
                    </td>
                <td style="width: 100px; height: 16px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 16px">
                </td>
                <td style="width: 170px; height: 16px">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AccountStatement.aspx"
                        Style="z-index: 100; left: 13px; position: relative; top: 0px" Width="209px">Account Statement</asp:HyperLink></td>
                <td style="width: 100px; height: 16px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 16px">
                </td>
                <td style="width: 170px; height: 16px">
                    &nbsp;</td>
                <td style="width: 100px; height: 16px">
                </td>
            </tr>
        </table>
</asp:Content>

