<%@ Page Language="C#" MasterPageFile="~/CustomerPage.master" AutoEventWireup="true" CodeFile="CreditPaymentCiticard.aspx.cs" Inherits="CreditPaymentCiticard" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" ForeColor="#0000C0" Style="z-index: 100; left: 0px;
        position: relative; top: 9px" Text="Credit Payment ( From Citi Credit Card)"></asp:Label><br />
    <br />
    <br />
    <table style="z-index: 100; left: 111px; position: relative; top: 11px">
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" ForeColor="Maroon" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Credit Card No"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TxtToAccNo" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Enabled="False" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label3" runat="server" ForeColor="Maroon" Style="position: relative"
                    Text="Credit Amount"></asp:Label></td>
            <td style="width: 100px; height: 16px">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Enabled="False" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" BackColor="#E0E0E0" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" OnClick="Button1_Click" Style="z-index: 100;
                    left: 22px; position: relative; top: 0px" Text="OK" Width="58px" /></td>
            <td style="width: 100px">
                <asp:Button ID="Button2" runat="server" BackColor="#E0E0E0" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" OnClick="Button2_Click" Style="z-index: 100;
                    left: 12px; position: relative; top: 1px" Text="Cancel" /></td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

