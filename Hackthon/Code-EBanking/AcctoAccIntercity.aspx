<%@ Page Language="C#" MasterPageFile="~/CustomerPage.master" AutoEventWireup="true" CodeFile="AcctoAccIntercity.aspx.cs" Inherits="AcctoAccIntercity" Title="Untitled Page" %>

<%@ Register Assembly="msgBox" Namespace="BunnyBear" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
    <asp:Label ID="lbl" runat="server" ForeColor="#0000C0" Style="z-index: 100; left: 11px;
        position: relative; top: 11px" Text="Account To Account Transfer- Inter City"></asp:Label>
    <cc1:msgbox id="MsgBox1" runat="server" style="z-index: 101; left: 0px; position: absolute;
        top: 0px"></cc1:msgbox>
    <table style="z-index: 100; left: 158px; position: relative; top: 36px">
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" ForeColor="Maroon" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="From Account No" Width="127px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="FromAccountNumber" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label1" runat="server" ForeColor="Maroon" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="City"></asp:Label></td>
            <td style="width: 100px; height: 16px">
                <asp:DropDownList ID="Branch" runat="server" BackColor="AliceBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Width="116px" AutoPostBack="True" OnSelectedIndexChanged="branch_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label3" runat="server" ForeColor="Maroon" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="To Account No"></asp:Label></td>
            <td style="width: 100px; height: 16px"><asp:DropDownList ID="ToAccountNumber" runat="server" BackColor="AliceBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Width="116px" >
            </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" ForeColor="Maroon" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Amount"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="Amount" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label5" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="Transfer" runat="server" BackColor="#E0E0E0" BorderColor="Black" BorderStyle="Solid"
                    BorderWidth="1px" Style="z-index: 100; left: 37px; position: relative; top: 0px"
                    Text="Transfer" OnClick="Transfer_Click"  /></td>
            <td style="width: 100px">
                <asp:Button ID="Cancel" runat="server" BackColor="#E0E0E0" BorderColor="Black" BorderStyle="Solid"
                    BorderWidth="1px" Style="z-index: 100; left: 16px; position: relative; top: 0px"
                    Text="Cancel" Width="80px" OnClick="Cancel_Click" /></td>
        </tr>
    </table>
    </form>
    <br />
    <br />
</asp:Content>

