<%@ Page Language="C#" MasterPageFile="~/CustomerPage.master" AutoEventWireup="true" CodeFile="AccountBalance.aspx.cs" Inherits="AccountBalance" Title="Untitled Page" %>

<%@ Register Assembly="msgBox" Namespace="BunnyBear" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
        position: relative; top: 0px" Text="Account Balance"></asp:Label><br />
    <br />
    <br />
    <table style="z-index: 100; left: 31px; position: relative; top: 5px">
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
                <asp:Label ID="Label2" runat="server" ForeColor="#C00000" Style="position: relative"
                    Text="Account Type"></asp:Label></td>
            <td style="width: 100px">
                <asp:DropDownList ID="AccountType" runat="server" BackColor="AliceBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Width="116px" >
                    <asp:ListItem Value="T1">PERSONAL</asp:ListItem>
                    <asp:ListItem Value="T2">FIXED</asp:ListItem>
                    <asp:ListItem Value="T3">CURRENT</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" ForeColor="#C00000" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Account Number" Width="113px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="AccountNumber" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" CausesValidation="True" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
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
        <tr>
            <td style="width: 100px">
                <asp:Button ID="CheckBal" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" OnClick="CheckBal_Click" Style="z-index: 100;
                    left: 31px; position: relative; top: 0px" Text="Check Bal" /></td>
            <td style="width: 100px">
                <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" OnClick="Cancel_Click" Style="z-index: 100;
                    left: 13px; position: relative; top: 0px" Text="Cancel" Width="76px" /></td>
            <td style="width: 100px">
                <cc1:msgbox id="MsgBox1" runat="server" style="z-index: 126; left: 0px; position: relative;
                    top: 0px"></cc1:msgbox>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

