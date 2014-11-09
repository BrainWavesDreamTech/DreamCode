<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="UpdateAccount.aspx.cs" Inherits="UpdateAccount" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;
    <form id="f1" runat="server">
    <table style="z-index: 100; left: 46px; position: relative; top: 0px">
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="Label13" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Account Number" Width="120px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="Txt_Accno" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Button ID="Button2" runat="server" BackColor="Thistle" BorderColor="#404040"
                    BorderStyle="Outset" BorderWidth="1px" ForeColor="Blue" OnClick="Button2_Click"
                    Style="z-index: 100; left: 0px; position: relative; top: 0px" Text="View Info" /></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Name" Width="85px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txt_name" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Label ID="Label10" runat="server" ForeColor="Navy" Style="z-index: 100; left: 13px;
                    position: relative; top: 0px" Text="Pincode" Width="85px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtpin" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Father's Name" Width="107px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtfname" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
                &nbsp;<asp:Label ID="Label11" runat="server" ForeColor="Navy" Style="z-index: 100;
                    left: 9px; position: relative; top: 0px" Text="Phone Number" Width="101px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtphone" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Date Of Birth" Width="85px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtdob" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
                &nbsp; &nbsp;
                <asp:Label ID="Label12" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Email Id" Width="85px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtemail" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Age" Width="85px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtage" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="position: relative" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
                &nbsp; &nbsp;&nbsp;
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label5" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Marital Status" Width="109px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtmarital" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                <asp:Label ID="Label6" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Address" Width="85px"></asp:Label></td>
            <td style="width: 100px; height: 20px">
                <asp:TextBox ID="txtaddress" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px; height: 20px">
            </td>
            <td style="width: 100px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label7" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="City" Width="85px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtcity" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="position: relative" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label8" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="State" Width="85px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtstate" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 10px">
                <asp:Label ID="Label9" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Country" Width="85px"></asp:Label></td>
            <td style="width: 100px; height: 10px">
                <asp:TextBox ID="txtcountry" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px; height: 10px">
                &nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="ActiveBorder" BorderColor="#000040"
                    BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" OnClick="Button1_Click"
                    Style="z-index: 100; left: 151px; position: relative; top: 0px" Text="Update"
                    Width="55px" /></td>
            <td style="width: 100px; height: 10px">
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

