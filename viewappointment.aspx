<%@ Page Title="" Language="C#" MasterPageFile="~/adminedit.Master" AutoEventWireup="true" CodeBehind="viewappointment.aspx.cs" Inherits="BeautySalon.viewappointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">            $(document).ready(function () {                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();       });     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered" p style="font-weight:200; font-size:35px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="10" CellSpacing="2" Font-Bold="True">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="doa" HeaderText="doa" SortExpression="doa" />
            <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="service" HeaderText="service" SortExpression="service" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
        </Columns>
        <EditRowStyle Font-Bold="True" />
        <RowStyle Font-Bold="True" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonConnectionString %>" SelectCommand="SELECT * FROM [billing]"></asp:SqlDataSource>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
