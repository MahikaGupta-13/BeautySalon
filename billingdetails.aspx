<%@ Page Title="" Language="C#" MasterPageFile="~/adminedit.Master" AutoEventWireup="true" CodeBehind="billingdetails.aspx.cs" Inherits="BeautySalon.billingdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="doa" HeaderText="doa" SortExpression="doa" />
        <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="service" HeaderText="service" SortExpression="service" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
    </Columns>
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonConnectionString %>" SelectCommand="SELECT * FROM [billing]"></asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
