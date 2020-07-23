<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master"%>

   <asp:Content ID="default" ContentPlaceHolderID="MainContent" runat="server">
       <div class="style1">
    
        MISSION:<br />
        <br />
        To sell the cheapest airline tickets in an increasingly competitive market.<br />
        To assemble the most advanced team of travel experts in the world.<br />
        To maintain an efficient and technologically bullet-proof platform.<br />
        Innovate, don&#39;t imitate.<br />
        <br />
        <br />
        <br />
        <br />
        <table class="style2">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    <strong>ADMIN LOGIN</strong></td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    Username:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="UserName Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Password:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Log In" />
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            width: 97%;
        }
        .style3
        {
            width: 455px;
            text-align: right;
        }
        .style4
        {
            width: 189px;
        }
        .style5
        {
            width: 561px;
            text-align: left;
        }
        .style6
        {
            width: 189px;
            font-size: x-large;
            font-family: "Times New Roman", Times, serif;
        }
        .style7
        {
            width: 455px;
            text-align: right;
        }
    </style>
</asp:Content>


