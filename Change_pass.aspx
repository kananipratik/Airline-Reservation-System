<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Change_pass.aspx.cs" Inherits="Change_pass"  MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="change" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    
        <span class="style7"><strong>Change Password</strong></span><br />
        <br />
        <table class="style1">
            <tr>
                <td class="style4">
                    New Password:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Confirm Password:</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Change" />
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 426px;
            text-align: right;
        }
        .style5
        {
            width: 426px;
            height: 21px;
            text-align: right;
        }
        .style6
        {
            height: 21px;
        }
        .style7
        {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
        }
    </style>
</asp:Content>
