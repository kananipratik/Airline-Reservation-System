<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration"  MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="registration" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    
        <strong><span class="style2">Registration page</span><br />
        <br />
        </strong>
        <table class="style1">
            <tr>
                <td class="style3">
                    UserName:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Email:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter Valid Email" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Password:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Confirm Password:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter Confirm Password" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                        ErrorMessage="Password not matched" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" Text="Register" onclick="Button1_Click" 
                        style="height: 26px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
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
    .style2
    {
        font-size: xx-large;
    }
    .style3
    {
        width: 306px;
        text-align: right;
    }
    .style4
    {
        width: 184px;
        text-align: center;
    }
</style>
</asp:Content>
