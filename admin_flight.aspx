<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_flight.aspx.cs" Inherits="admin_flight"  MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="aflight" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <strong>Add Flights Here</strong></td>
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
            <tr>
                <td class="style3">
                    Flight No:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    From:</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="140px">
                        <asp:ListItem>Select City</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Surat</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    To:</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="140px">
                        <asp:ListItem>Select City</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Shimla</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    No of Ticket Available:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox2" runat="server" Width="140px"></asp:TextBox>
&nbsp;(For Business)</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    No of Ticket Available:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox3" runat="server" Width="140px"></asp:TextBox>
&nbsp;(For Economy)</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Type:</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="140px">
                        <asp:ListItem>Select Type</asp:ListItem>
                        <asp:ListItem>One Way</asp:ListItem>
                        <asp:ListItem>Round Trip</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownList3" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Date:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox4" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Time:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox5" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Price:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox6" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [flight]"></asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="flight_no" HeaderText="Flight_no" 
                SortExpression="flight_no" />
            <asp:BoundField DataField="fr_om" HeaderText="From" SortExpression="fr_om" />
            <asp:BoundField DataField="t_o" HeaderText="To" SortExpression="t_o" />
            <asp:BoundField DataField="buss_tic" HeaderText="buss_tic" 
                SortExpression="buss_tic" />
            <asp:BoundField DataField="eco_tic" HeaderText="eco_tic" 
                SortExpression="eco_tic" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
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
 </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        font-size: large;
        width: 300px;
    }
    .style3
    {
        width: 300px;
        text-align: right;
    }
    .style4
    {
        width: 240px;
        text-align: left;
    }
</style>
</asp:Content>
