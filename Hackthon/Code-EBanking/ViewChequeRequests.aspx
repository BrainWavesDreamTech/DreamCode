<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewChequeRequests.aspx.cs" Inherits="ViewChequeRequests" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="z-index: 100; left: 27px; position: relative; top: 82px">
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 119px;">
            </td>
            <td style="width: 100px; height: 119px;">
                <asp:DataGrid ID="DataGrid1" runat="server" BorderColor="#C0C0FF" BorderStyle="Solid"
                    BorderWidth="1px" Style="z-index: 100; left: 0px; position: relative; top: 0px" AutoGenerateColumns="False" BackColor="Snow">
                    <Columns>
                        <asp:BoundColumn DataField="Accountno" HeaderText="AccountNumber"></asp:BoundColumn>
                        <asp:BoundColumn DataField="AHName" HeaderText="Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="oldchequebookid" HeaderText="ChequeBookid"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Daterequested" HeaderText="Date"></asp:BoundColumn>
                        <asp:HyperLinkColumn DataNavigateUrlField="accountno" DataNavigateUrlFormatString="orderchequebook.aspx?accno={0}"
                            DataTextField="status" HeaderText="Status" Target="_parent"></asp:HyperLinkColumn>
                    </Columns>
                </asp:DataGrid></td>
            <td style="width: 100px; height: 119px;">
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
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

