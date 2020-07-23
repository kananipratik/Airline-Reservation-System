<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login"  MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="login" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    
        <strong><span class="style7">Login Page<br />
        </span></strong>
        <br class="style6" />
        <table class="style1">
            <tr>
                <td class="style8">
                    UserName:</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox1" runat="server" Width="120px" CssClass="style8"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter UserName" ForeColor="Red" 
                        CssClass="style8"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    Password:</td>
                <td class="style15">
                    <asp:TextBox ID="TextBox2" runat="server" Width="120px" CssClass="style8" 
                        TextMode="Password"></asp:TextBox>
                </td>
                <td class="style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red" 
                        CssClass="style8"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <span class="style6">
            <tr>
                <td class="style16">
                    </td>
                <td class="style17">
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="style8" 
                        onclick="Button1_Click" />
                </td>
                <td class="style16">
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0066FF" 
                        NavigateUrl="~/Registration.aspx" CssClass="style8">New User Register Here</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="font-size: small">
                    </span></td>
                <td class="style7">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Forget_pass.aspx" 
                        CssClass="style8">Forgot Password?</asp:HyperLink>
                </td>
                <td style="font-size: small">
                    &nbsp;</td>
            </tr>
            </table>
    
        <br />
    
    </div>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
        .style6
        {
            font-size: small;
        }
        .style7
        {
            font-size: small;
            text-align: right;
        }
        .style8
        {
            font-size: small;
        }
        .style10
        {
            font-size: medium;
            text-align: left;
            height: 25px;
        }
        .style14
        {
            font-size: small;
            height: 25px;
        }
        .style15
        {
            font-size: xx-small;
            height: 25px;
        }
        .style16
        {
            height: 9px;
            font-size: x-small;
        }
        .style17
        {
            font-size: small;
            text-align: right;
            height: 9px;
        }
        .style19
        {
            font-size: small;
            text-align: right;
            height: 18px;
        }
        .style20
        {
            height: 18px;
        }
        .style21
        {
            font-size: xx-small;
            height: 18px;
        }
    </style>
</asp:Content>
