<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin"  MasterPageFile="~/MasterPage.master"%>


<asp:Content ID="admin" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    
        <strong><span class="style1">Welcome Admin</span></strong><br />
        <br />
    
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin_flight.aspx">Insert Flight</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/admin_delete.aspx">Delete Flight</asp:HyperLink>
    
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>
