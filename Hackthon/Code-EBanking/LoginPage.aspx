<%@ Page Language="C#" MasterPageFile="~/LoginPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" Title="Untitled Page" %>

<%@ Register Assembly="msgBox" Namespace="BunnyBear" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <br />
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;&nbsp;
    <table style="z-index: 100; left: 117px; position: relative; top: 13px; height: 148px;">
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Navy" Style="z-index: 100;
                    left: 0px; position: absolute; top: -7px" Text="Login Page"></asp:Label>
            </td>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px;">
            </td>
            <td style="width: 100px; height: 20px;">
                <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="UserID" ForeColor="#0000C0"></asp:Label></td>
            <td style="width: 100px; height: 20px;">
                <asp:TextBox ID="userid" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px; height: 20px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px;">
            </td>
            <td style="width: 100px; height: 20px;">
                <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Password" ForeColor="#0000C0"></asp:Label></td>
            <td style="width: 100px; height: 20px;">
                <asp:TextBox ID="Password" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Width="111px" TextMode="Password"></asp:TextBox></td>
            <td style="width: 100px; height: 20px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 22px;">
            </td>
            <td style="width: 100px; height: 22px;">
                &nbsp; &nbsp;&nbsp;
                <asp:Button ID="Transfer" runat="server" BackColor="#E0E0E0" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Login" OnClick="Transfer_Click" /></td>
            <td style="width: 100px; height: 22px;">
                <asp:Button ID="Reset" runat="server" BackColor="#E0E0E0" BorderColor="Black" BorderStyle="Solid"
                    BorderWidth="1px"  Style="z-index: 100; left: 23px; position: relative;
                    top: 1px" Text="Reset" OnClick="Reset_Click" /></td>
            <td style="width: 100px; height: 22px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px;">
                <cc1:msgbox id="MsgBox1" runat="server" style="z-index: 86; left: 0px; position: absolute;
                    top: 0px"></cc1:msgbox>
            </td>
            <td style="width: 100px; height: 16px;">
            </td>
            <td style="width: 100px; height: 16px;">
            </td>
            <td style="width: 100px; height: 16px;">
            </td>
        </tr>
    </table>
    </form>

</asp:Content>

