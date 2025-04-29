<%@ Page Title="" Language="C#" MasterPageFile="~/adminedit.Master" AutoEventWireup="true" CodeBehind="staffdetails.aspx.cs" Inherits="BeautySalon.staffdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">            $(document).ready(function () {                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();       });     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered" p style="font-weight:200; font-size:35px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="10" CellSpacing="2" Font-Bold="True">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
        </Columns>
        <EditRowStyle Font-Bold="True" />
        <EmptyDataRowStyle Font-Bold="True" />
        <RowStyle Font-Bold="True" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonConnectionString %>" SelectCommand="SELECT * FROM [staffreg]"></asp:SqlDataSource>
</asp:Content>
