<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="UsersPages.aspx.cs" Inherits="UsersPages" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <form>
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;
    <table style="z-index: 100; left: 98px; position: relative; top: 25px">
        <tr>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
                <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" Width="154px" NavigateUrl="~/AddUser.aspx">Add User Details</asp:HyperLink></td>
            <td style="width: 100px; height: 16px">
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
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:HyperLink ID="HyperLink2" runat="server" Style="z-index: 100; left: 0px; position: relative;
                    top: 0px" NavigateUrl="~/ViewUsers.aspx">View Users</asp:HyperLink></td>
            <td style="width: 100px">
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
    </table>
    </form>
</asp:Content>

