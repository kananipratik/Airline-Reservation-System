<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forget_pass.aspx.cs" Inherits="Forget_pass"  MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="change" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    
        <span class="style4"><strong>Forget Password</strong></span><br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    UserName:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Code:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Forget" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
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
        .style2
        {
            width: 225px;
            text-align: right;
        }
        .style3
        {
            width: 165px;
            text-align: center;
        }
        .style4
        {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
        }
    </style>
</asp:Content>
