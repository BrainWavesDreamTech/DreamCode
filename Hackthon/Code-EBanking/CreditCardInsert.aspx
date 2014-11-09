<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="CreditCardInsert.aspx.cs" Inherits="CreditCardInsert" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
    <table style="z-index: 101; left: 5px; position: relative; top: 4px">
        <tr>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small"
                    ForeColor="Navy" Height="16px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Credit Card App No" Width="136px"></asp:Label></td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="TXT_CREDIT" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="104px"></asp:TextBox></td>
            <td style="width: 100px; height: 21px">
            </td>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Gender" Width="56px"></asp:Label></td>
            <td style="width: 100px; height: 21px">
                <asp:RadioButtonList ID="R_GENDER" runat="server" Font-Size="Smaller" Height="8px"
                    RepeatDirection="Horizontal" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="104px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Navy" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Applied Date" Width="96px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TXT_APP_DATE" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="104px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Address" Width="64px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TXT_ADDRESS" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="122px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Navy" Height="16px"
                    Style="z-index: 100; left: 0px; position: relative; top: 0px" Text="Creditor-Name"
                    Width="121px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TXT_NAME_C" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="104px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="City" Width="40px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TXT_CITY" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="122px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Date of Birth" Width="96px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="104px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="State" Width="40px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TXT_STATE" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="122px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Account type" Width="124px"></asp:Label></td>
            <td style="width: 100px">
                <asp:DropDownList ID="DDL_ACC" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="104px">
                    <asp:ListItem>SELECT ONE</asp:ListItem>
                    <asp:ListItem>SAVINGS</asp:ListItem>
                    <asp:ListItem>CURRENT</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="County" Width="56px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TXT_COUNTRY" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="122px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="EmplyeeCode" Width="96px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TXT_D_BIRTH" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="104px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Pincode" Width="56px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TXT_PINCODE" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="122px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Nominee Name" Width="133px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TXT_N_NAME" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="104px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Phone" Width="48px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TXT_PHONE" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="122px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Relation" Width="64px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TXT_RELATION" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="104px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="Label19" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Deposit Amount" Width="121px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TXT_DEPOSIT" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="122px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Marital Status" Width="104px"></asp:Label></td>
            <td style="width: 100px">
                <asp:RadioButtonList ID="R_M_STATUS" runat="server" Height="64px" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Width="136px">
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Unmarried</asp:ListItem>
                </asp:RadioButtonList></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="Label20" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Card Name" Width="80px"></asp:Label></td>
            <td style="width: 100px">
                <asp:DropDownList ID="DDL_CARD_NAME" runat="server" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Width="128px">
                    <asp:ListItem>SELECT ONE</asp:ListItem>
                    <asp:ListItem>VISA</asp:ListItem>
                    <asp:ListItem>MASTER</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Save" /></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="Label21" runat="server" Font-Bold="True" ForeColor="DarkBlue" Style="z-index: 100;
                    left: 0px; position: relative; top: 0px" Text="Email" Width="48px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TXT_EMAIL" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="122px"></asp:TextBox></td>
        </tr>
    </table>
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    </form>
</asp:Content>

