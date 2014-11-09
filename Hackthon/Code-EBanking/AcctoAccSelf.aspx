<%@ Page Language="C#" MasterPageFile="~/CustomerPage.master" AutoEventWireup="true" CodeFile="AcctoAccSelf.aspx.cs" Inherits="AcctoAccSelf" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
  <form id="form1" runat="server">
  <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 9px; position: relative;
        top: 17px" Text="Acc To Acc Transfer-Self" ForeColor="Blue"></asp:Label>
    <table style="z-index: 100; left: 177px; position: relative; top: 73px">
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="To Acount No"></asp:Label></td>
            <td style="width: 100px; height: 16px">
                <asp:TextBox ID="txtaccno" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Amount"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TxtAmount" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="btnTransfer" runat="server" BackColor="#E0E0E0" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 15px; position: relative;
                    top: 0px" Text="Transfer" OnClick="btnTransfer_Click" /></td>
            <td style="width: 100px">
                &nbsp;
                <asp:Button ID="btnCancel" runat="server" BackColor="#E0E0E0" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 7px; position: relative;
                    top: 0px" Text="Cancel" Width="80px" /></td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

