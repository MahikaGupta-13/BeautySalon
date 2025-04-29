<%@ Page Title="" Language="C#" MasterPageFile="~/appointment.Master" AutoEventWireup="true" CodeBehind="spaoffer.aspx.cs" Inherits="BeautySalon.spaoffer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h2 align="center">SPA</h2>
    <br />

    <asp:Table ID="Table1" runat="server" CellSpacing="45" HorizontalAlign="Center" BorderColor="Black" BorderStyle="Double" BorderWidth="20px" CellPadding="10">

        <asp:TableRow>

            <asp:TableCell>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/folder/aromatherapy.jpg" Height="450" Width="350" />
            </asp:TableCell>

             <asp:TableCell>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/folder/bodymassage.jpg" Height="450" Width="350" />
            </asp:TableCell>

              <asp:TableCell>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/folder/hairspa.jpg" Height="450" Width="350" />
            </asp:TableCell>
             <asp:TableCell>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/folder/thaifoot.jpg" Height="450" Width="350" />
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
              <asp:TableCell>
                <p style="font-weight:500; font-size:35px">Aroma therapy 7000</p>
            </asp:TableCell>

            <asp:TableCell>
                <p style="font-weight:500; font-size:35px">Body Massage 5000</p>
            </asp:TableCell>

            <asp:TableCell>
                <p style="font-weight:500; font-size:35px">Hair Spa 4000</p>
             </asp:TableCell>

            <asp:TableCell>
                <p style="font-weight:500; font-size:35px">Thai Foot Massage 2500</p>
            </asp:TableCell>

        </asp:TableRow>
        <asp:TableRow>
             
        <asp:TableCell>
         <asp:Button ID="Button2" runat="server" Text="Book Appointment" PostBackUrl="~/billing.aspx" />
         </asp:TableCell>
       
         </asp:TableRow>

    </asp:Table>
</asp:Content>
