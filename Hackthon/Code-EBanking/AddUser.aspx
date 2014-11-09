<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="AddUser" Title="Untitled Page" %>

<%@ Register Assembly="msgBox" Namespace="BunnyBear" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
<!--

// -->
</script>
<form id="form1" runat="server">
    <cc1:msgbox id="MsgBox1" runat="server" style="z-index: 134; left: 0px; position: absolute;
        top: 0px"></cc1:msgbox>
    <table id="TABLE1" style="z-index: 100; left: 88px; position: relative; top: 90px" language="javascript" onclick="return TABLE1_onclick()">
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="User ID" ForeColor="Maroon"></asp:Label></td>
            <td style="width: 100px; height: 16px">
                <asp:TextBox ID="UserId" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" BackColor="AliceBlue" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px;">
                <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Account Number" ForeColor="Maroon" Width="124px"></asp:Label></td>
            <td style="width: 100px; height: 20px;">
                <asp:TextBox ID="AccountNumber" runat="server" Style="position: relative" BackColor="AliceBlue" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px; height: 20px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Password" ForeColor="Maroon"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="Password" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" TextMode="Password" BackColor="AliceBlue" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Retype Password" ForeColor="Maroon" Width="149px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="Retypepassword" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" TextMode="Password" BackColor="AliceBlue" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password"
                    ControlToValidate="Retypepassword" ErrorMessage="Passwords should match" Style="left: 43px;
                    position: relative; top: 0px" Width="162px"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BorderColor="#00C0C0" BorderStyle="Solid"
                    Style="z-index: 100; left: 0px; position: relative; top: 0px" Text="Create" OnClick="Button1_Click" /></td>
            <td style="width: 100px">
                &nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BorderColor="#00C0C0" BorderStyle="Solid"
                    Style="z-index: 100; left: 0px; position: relative; top: 0px" Text="Reset" OnClick="Button2_Click" /></td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
    </form>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

