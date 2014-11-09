<%@ Page Language="C#" MasterPageFile="~/CustomerPage.master" AutoEventWireup="true" CodeFile="AcctoAccTransfer.aspx.cs" Inherits="AcctoAccTransfer" Title="Untitled Page" %>
<asp:Content ID="AccounttoAccountTransfer" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" ForeColor="#0000C0" Style="z-index: 100; left: 3px;
        position: relative; top: 16px" Text="Account To Account Transfer"></asp:Label>
    <table style="z-index: 100; left: 114px; position: relative; top: 73px">
        <tr>
            <td style="width: 100px; height: 16px;">
            </td>
            <td style="width: 100px; height: 16px;">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Maroon" NavigateUrl="~/AcctoAccsamecity.aspx"
                    Style="z-index: 100; left: 4px; position: relative; top: 1px" Width="128px">From Same City</asp:HyperLink></td>
            <td style="width: 100px; height: 16px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px;">
            </td>
            <td style="width: 100px; height: 16px;">
            </td>
            <td style="width: 100px; height: 16px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px;">
            </td>
            <td style="width: 100px; height: 16px;">
                </td>
            <td style="width: 100px; height: 16px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Maroon" NavigateUrl="~/AcctoAccIntercity.aspx"
                    Style="z-index: 100; left: 4px; position: relative; top: 0px" Width="127px">From Inter City</asp:HyperLink></td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
                </td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

