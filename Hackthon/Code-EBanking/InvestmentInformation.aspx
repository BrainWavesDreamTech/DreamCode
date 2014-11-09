<%@ Page Language="C#" MasterPageFile="~/CustomerPage.master" AutoEventWireup="true" CodeFile="InvestmentInformation.aspx.cs" Inherits="InvestmentInformation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
<!--

function TABLE1_onclick() {

}

// -->
</script>

   <form id="form1" runat="server">
       <asp:Label ID="Label12" runat="server" ForeColor="Maroon" Style="z-index: 100; left: 0px;
           position: relative; top: 0px" Text="Investment Services"></asp:Label>
       <table style="z-index: 100; left: 95px; position: relative; top: 11px" id="TABLE1" language="javascript" onclick="return TABLE1_onclick()">
           <tr>
               <td style="width: 100px">
               </td>
               <td style="width: 100px">
               </td>
           </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Name" ForeColor="Maroon"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="Name" runat="server" BackColor="AliceBlue" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Address 1" ForeColor="Maroon"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="Address1" runat="server" BackColor="AliceBlue" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Address 2" ForeColor="Maroon"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="Address2" runat="server" BackColor="AliceBlue" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="City" ForeColor="Maroon"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="City" runat="server" BackColor="AliceBlue" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label5" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="State" ForeColor="Maroon"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="state" runat="server" BackColor="AliceBlue" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label6" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Country" ForeColor="Maroon"></asp:Label></td>
            <td style="width: 100px; height: 16px">
                <asp:TextBox ID="country" runat="server" BackColor="AliceBlue" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label11" runat="server" ForeColor="Maroon" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Pincode"></asp:Label></td>
            <td style="width: 100px; height: 16px">
                <asp:TextBox ID="pincode" runat="server" BackColor="AliceBlue" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label7" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Contact Number" Width="123px" ForeColor="Maroon"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="cn" runat="server" BackColor="AliceBlue" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 16px">
                <asp:Label ID="Label8" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Email Id" ForeColor="Maroon"></asp:Label></td>
            <td style="width: 100px; height: 16px">
                <asp:TextBox ID="EmailId" runat="server" BackColor="AliceBlue" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label9" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Type Of Loan" ForeColor="Maroon"></asp:Label></td>
            <td style="width: 100px">
                <asp:RadioButtonList ID="TypeOfLoan" runat="server" RepeatDirection="Horizontal"
                    Style="z-index: 100; left: -1px; position: relative; top: 7px" OnSelectedIndexChanged="TypeOfLoan_SelectedIndexChanged">
                    <asp:ListItem>Personal </asp:ListItem>
                    <asp:ListItem>Housing </asp:ListItem>
                    <asp:ListItem>Automobile </asp:ListItem>
                    <asp:ListItem>Educational </asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label10" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Amount" ForeColor="Maroon"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="Amount" runat="server" BackColor="AliceBlue" BorderColor="#404040"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="submit" runat="server" BackColor="ActiveBorder" BorderColor="#000040"
                    BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" OnClick="Button1_Click"
                    Style="z-index: 100; left: 0px; position: relative; top: 0px" Text="Submit" Width="55px" /></td>
        </tr>
    </table>
    </form>

</asp:Content>

