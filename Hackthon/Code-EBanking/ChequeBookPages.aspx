<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ChequeBookPages.aspx.cs" Inherits="ChequeBookPages" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="z-index: 100; left: 97px; position: relative; top: 93px">
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="147px" NavigateUrl="~/OrderChequeBook.aspx">Order ChequeBooks</asp:HyperLink></td>
            <td style="width: 100px">
            </td>
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
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:HyperLink ID="HyperLink2" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="200px" NavigateUrl="~/ViewChequeRequests.aspx">View ChequeBook Requests</asp:HyperLink></td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

