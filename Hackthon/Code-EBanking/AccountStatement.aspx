<%@ Page Language="C#" MasterPageFile="~/CustomerPage.master" AutoEventWireup="true" CodeFile="AccountStatement.aspx.cs" Inherits="AccountStatement" Title="Untitled Page" %>

<%@ Register Assembly="msgBox" Namespace="BunnyBear" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
        position: relative; top: 0px" Text="Account Statement"></asp:Label><br />
    <br />
    <table style="z-index: 100; left: 77px; position: relative; top: 8px">
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
                    left: 0px; position: relative; top: 0px" Width="116px">
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
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
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
                <asp:Button ID="View" runat="server" BackColor="AliceBlue" BorderColor="Black" BorderStyle="Solid"
                    BorderWidth="1px" OnClick="View_Click" Style="z-index: 100; left: 31px; position: relative;
                    top: 0px" Text="View" Width="63px" /></td>
            <td style="width: 100px">
                <asp:Button ID="Print" runat="server" BackColor="AliceBlue" BorderColor="Black" BorderStyle="Solid"
                    BorderWidth="1px" Style="z-index: 100; left: 13px; position: relative; top: 0px"
                    Text="Print" Width="70px" /></td>
            <td style="width: 100px">
                <cc1:msgbox id="MsgBox1" runat="server" style="z-index: 127; left: 0px; position: relative;
                    top: 0px"></cc1:msgbox>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px"></asp:Label></td>
        </tr>
    </table>
    <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" BackColor="White"
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black"
        GridLines="Vertical"
        PageSize="6" Style="z-index: 102; left: 3px; position: relative; top: 13px">
        <FooterStyle BackColor="#CCCC99" />
        <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" Mode="NumericPages" />
        <AlternatingItemStyle BackColor="White" />
        <ItemStyle BackColor="#F7F7DE" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
    </asp:DataGrid>
    </form>

</asp:Content>

