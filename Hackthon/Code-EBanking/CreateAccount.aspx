<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="Default8" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <form id="form1" runat="server" method="post">
  
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="color: #ff0066">Create Account</span></strong><br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<table style="left: 58px; position: relative; top: 2px">
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Name" Width="85px" ForeColor="Navy"></asp:Label></td>
            <td style="width: 100px">
                <input id="Name" runat="server" maxlength="10" style="border-right: black 1px solid;
                    border-top: black 1px solid; z-index: 100; left: 0px; border-left: black 1px solid;
                    width: 111px; border-bottom: black 1px solid; position: relative; top: 0px; background-color: aliceblue"
                    type="text"  onkeypress="alpha()"/></td>
            <td style="width: 100px">
                <asp:Label ID="Label10" runat="server" Style="z-index: 100; left: 13px; position: relative;
                    top: 0px" Text="Pincode" Width="85px" ForeColor="Navy"></asp:Label></td>
            <td style="width: 100px"><input id="Pincode" runat="server" maxlength="6" style="border-right: black 1px solid;
                    border-top: black 1px solid; z-index: 107; left: 0px; border-left: black 1px solid;
                    width: 111px; border-bottom: black 1px solid; position: relative; top: 0px; background-color: aliceblue"
                    type="text"  onkeypress="pincode()"/></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Father's Name" Width="107px" ForeColor="Navy"></asp:Label></td>
            <td style="width: 100px"><input id="fathersname" runat="server" maxlength="10" style="border-right: black 1px solid;
                    border-top: black 1px solid; z-index: 101; left: 0px; border-left: black 1px solid;
                    width: 111px; border-bottom: black 1px solid; position: relative; top: 0px; background-color: aliceblue"
                    type="text"  onkeypress="alpha()"/></td>
            <td style="width: 100px">
                &nbsp;<asp:Label ID="Label11" runat="server" ForeColor="Navy" Style="z-index: 100;
                    left: 9px; position: relative; top: 0px" Text="Phone Number" Width="101px"></asp:Label></td>
            <td style="width: 100px"><input id="PhoneNumber" runat="server" maxlength="10" style="border-right: black 1px solid;
                    border-top: black 1px solid; z-index: 109; left: 0px; border-left: black 1px solid;
                    width: 111px; border-bottom: black 1px solid; position: relative; top: 0px; background-color: aliceblue"
                    type="text"  onkeypress="validn()"/></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Date Of Birth" Width="85px" ForeColor="Navy"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="Dob" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px">
                &nbsp; &nbsp;
                <asp:Label ID="Label12" runat="server" ForeColor="Navy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" Text="Email Id" Width="85px"></asp:Label></td>
            <td style="width: 100px"><input id="Email" runat="server" maxlength="20" style="border-right: black 1px solid;
                    border-top: black 1px solid; z-index: 110; left: 0px; border-left: black 1px solid;
                    width: 111px; border-bottom: black 1px solid; position: relative; top: 0px; background-color: aliceblue"
                    type="text" /></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Age" Width="85px" ForeColor="Navy"></asp:Label></td>
            <td style="width: 100px"><input id="Age" runat="server" maxlength="3" style="border-right: black 1px solid;
                    border-top: black 1px solid; z-index: 106; left: 0px; border-left: black 1px solid;
                    width: 111px; border-bottom: black 1px solid; position: relative; top: 0px; background-color: aliceblue"
                    type="text"  onkeypress="validn()"/></td>
            <td style="width: 100px">
                &nbsp; &nbsp;&nbsp;
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px;">
                <asp:Label ID="Label5" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Marital Status" Width="109px" ForeColor="Navy"></asp:Label></td>
            <td style="width: 100px; height: 20px;"><input id="MaritalStatus" runat="server" maxlength="10" style="border-right: black 1px solid;
                    border-top: black 1px solid; z-index: 102; left: 0px; border-left: black 1px solid;
                    width: 111px; border-bottom: black 1px solid; position: relative; top: 0px; background-color: aliceblue"
                    type="text"  onkeypress="alpha()"/></td>
            <td style="width: 100px; height: 20px;">
            </td>
            <td style="width: 100px; height: 20px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px;">
                <asp:Label ID="Label6" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Address" Width="85px" ForeColor="Navy"></asp:Label></td>
            <td style="width: 100px; height: 20px;">
                <asp:TextBox ID="Address" runat="server" BackColor="AliceBlue" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="111px"></asp:TextBox></td>
            <td style="width: 100px; height: 20px;">
            </td>
            <td style="width: 100px; height: 20px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label7" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="City" Width="85px" ForeColor="Navy"></asp:Label></td>
            <td style="width: 100px"><input id="City" runat="server" maxlength="10" style="border-right: black 1px solid;
                    border-top: black 1px solid; z-index: 103; left: 0px; border-left: black 1px solid;
                    width: 111px; border-bottom: black 1px solid; position: relative; top: 0px; background-color: aliceblue"
                    type="text"  onkeypress="alpha()"/></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label8" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="State" Width="85px" ForeColor="Navy"></asp:Label></td>
            <td style="width: 100px"><input id="State" runat="server" maxlength="10" style="border-right: black 1px solid;
                    border-top: black 1px solid; z-index: 104; left: 0px; border-left: black 1px solid;
                    width: 111px; border-bottom: black 1px solid; position: relative; top: 0px; background-color: aliceblue"
                    type="text"  onkeypress="alpha()"/></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label9" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Text="Country" Width="85px" ForeColor="Navy"></asp:Label></td>
            <td style="width: 100px"><input id="Country" runat="server" maxlength="10" style="border-right: black 1px solid;
                    border-top: black 1px solid; z-index: 105; left: 0px; border-left: black 1px solid;
                    width: 111px; border-bottom: black 1px solid; position: relative; top: 0px; background-color: aliceblue"
                    type="text"  onkeypress="alpha()"/></td>
            <td style="width: 100px">
                &nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="ActiveBorder" BorderColor="#000040"
                    BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" OnClick="Button1_Click"
                    Style="z-index: 100; left: 151px; position: relative; top: 0px" Text="Next" Width="55px" /></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 16px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="dob"
                    ErrorMessage="Date format should be mm-dd-yyyy" Style="z-index: 100; left: 0px;
                    position: relative; top: 0px" ValidationExpression="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d"
                    Width="279px"></asp:RegularExpressionValidator></td>
        </tr>
    </table>
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
      <br />
      <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    </form>
</asp:Content>

