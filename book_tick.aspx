<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book_tick.aspx.cs" Inherits="book_tick"  MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="book" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style3">
                    Name:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
                <td class="style12">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="text-align: right">
                    Email:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox2" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td class="style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" 
                        ForeColor="Red" style="font-size: small" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="style13">
                    <asp:Label ID="Label1" runat="server" Text="Enter Co-Passenger Name"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    Phone no:</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox3" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td class="style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" 
                        style="font-size: small"></asp:RequiredFieldValidator>
                </td>
                <td class="style14">
                    <asp:Label ID="Label2" runat="server" Text="Person1:" style="font-size: small"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    From:</td>
                <td class="style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="140px">
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Surat</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
                <td class="style13">
                    <asp:Label ID="Label3" runat="server" Text="Person2:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    To:</td>
                <td class="style5">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="140px">
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Shimla</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
                <td class="style13">
                    <asp:Label ID="Label4" runat="server" Text="Person3:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Class:</td>
                <td class="style5">
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="140px">
                        <asp:ListItem>Business</asp:ListItem>
                        <asp:ListItem>Economy</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DropDownList3" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
                <td class="style13">
                    <asp:Label ID="Label5" runat="server" Text="Person4:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    No.Of Ticket:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td class="style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter between(1-5)" ForeColor="Red" 
                        MaximumValue="5" MinimumValue="1"></asp:RangeValidator>
                    <br />
                </td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style13">
                    <asp:Label ID="Label7" runat="server" Text="Grand Total :"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="Book" 
                        Width="50px" />
                &nbsp;&nbsp;&nbsp;
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style13">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Confirm Booking" style="text-align: center" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: left;
        }
        .style3
        {
            text-align: right;
            width: 174px;
        }
        .style5
        {
            text-align: left;
            width: 146px;
        }
        .style6
        {
            width: 174px;
            text-align: right;
            height: 15px;
        }
        .style7
        {
            text-align: left;
            width: 146px;
            height: 15px;
        }
        .style8
        {
            height: 15px;
            font-size: xx-small;
        }
        .style9
        {
            text-align: left;
            width: 183px;
        }
        .style10
        {
            width: 183px;
        }
        .style11
        {
            height: 15px;
            font-size: xx-small;
            width: 183px;
        }
        .style12
        {
            text-align: left;
            width: 165px;
        }
        .style13
        {
            width: 165px;
            text-align: right;
        }
        .style14
        {
            height: 15px;
            font-size: xx-small;
            width: 165px;
            text-align: right;
        }
    </style>
</asp:Content>
