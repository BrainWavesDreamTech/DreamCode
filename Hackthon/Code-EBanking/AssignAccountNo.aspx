<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AssignAccountNo.aspx.cs" Inherits="AssignAccountNo" Title="Untitled Page" %>

<%@ Register Assembly="msgBox" Namespace="BunnyBear" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server" method="post">
    &nbsp; &nbsp;&nbsp;&nbsp;
    <cc1:msgbox id="MsgBox1" runat="server" style="z-index: 141; left: 0px; position: absolute;
        top: 0px"></cc1:msgbox>
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <table style="z-index: 100; left: 72px; position: relative; top: -26px; height: 160px;">
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    vertical-align: middle; position: relative; top: 0px; text-align: center" Text="Acccount Number"
                    Width="117px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="AccountNumber" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px" Enabled="False"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" ForeColor="Navy" Style="z-index: 100; left: 1px;
                    position: relative; top: 0px" Text="Account Type" Width="107px"></asp:Label></td>
            <td style="width: 100px">
                <asp:DropDownList ID="AccountType" runat="server" BackColor="AliceBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Width="116px">
                    <asp:ListItem>PERSONAL</asp:ListItem>
                    <asp:ListItem>FIXED</asp:ListItem>
                    <asp:ListItem>CURRENT</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 100px; height: 22px;">
                <asp:Label ID="Label3" runat="server" ForeColor="Navy" Style="z-index: 100; left: 1px;
                    position: relative; top: 0px" Text="Debit Card No" Width="113px"></asp:Label></td>
            <td style="width: 100px; height: 22px;"><asp:DropDownList ID="debitcard" runat="server" BackColor="AliceBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Width="116px">
            </asp:DropDownList></td>
            <td style="width: 100px; height: 22px;">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" ForeColor="Navy" Style="z-index: 100; left: 3px;
                    position: relative; top: 0px" Text="Branch" Width="107px"></asp:Label></td>
            <td style="width: 100px">
                <asp:DropDownList ID="branch" runat="server" BackColor="AliceBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Width="116px">
                </asp:DropDownList></td>
            <td style="width: 100px">
                &nbsp; &nbsp;&nbsp;
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
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label5" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="ChequeBookId" Width="107px"></asp:Label></td>
            <td style="width: 100px; height: 16px"><asp:DropDownList ID="chequeBookId" runat="server" BackColor="AliceBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Width="116px">
            </asp:DropDownList></td>
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
        <tr>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label10" runat="server" ForeColor="Maroon" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="User ID"></asp:Label></td>
            <td style="width: 100px; height: 16px">
                <asp:TextBox ID="userid" runat="server" BackColor="AliceBlue" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label11" runat="server" ForeColor="Maroon" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Password"></asp:Label></td>
            <td style="width: 100px; height: 16px">
                <asp:TextBox ID="password" runat="server" BackColor="AliceBlue" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" Style="position: relative" Width="111px"  TextMode="Password"></asp:TextBox></td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label12" runat="server" ForeColor="Maroon" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Retype Password" Width="149px"></asp:Label></td>
            <td style="width: 100px; height: 16px">
                <asp:TextBox ID="Retypepassword" runat="server" BackColor="AliceBlue" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" TextMode="Password" Width="111px"></asp:TextBox></td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="height: 16px;" colspan="3">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password"
                    ControlToValidate="Retypepassword" ErrorMessage="Passwords should match" Style="left: 43px;
                    position: relative; top: 0px" Width="162px"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="ActiveBorder" BorderColor="#000040"
                    BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" Style="z-index: 100;
                    left: 151px; position: relative; top: 0px" Text="Issue" Width="55px" OnClick="Button1_Click1"  /></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label6" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px"></asp:Label></td>
        </tr>
    </table>
    </form>
</asp:Content>

