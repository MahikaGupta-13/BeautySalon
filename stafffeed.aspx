<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="stafffeed.aspx.cs" Inherits="BeautySalon.stafffeed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered" p style="font-weight:200; font-size:35px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="review" HeaderText="review" SortExpression="review" />
        </Columns>
        <RowStyle Font-Bold="True" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonConnectionString %>" SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
</asp:Content>
