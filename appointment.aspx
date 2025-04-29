<%@ Page Title="" Language="C#" MasterPageFile="~/appointment.Master" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="BeautySalon.appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <br />

    <h2 align="center">Services</h2>

    <br />

    <asp:Table ID="Table1" runat="server" CellSpacing="45" HorizontalAlign="Center">

        <asp:TableRow>

            <asp:TableCell>
                <asp:ImageButton ID="ImageButton2" runat="server" PostBackUrl="~/hairoffer.aspx" ImageUrl="~/folder/hair.jpg" Height="450" Width="450" />                                  
            </asp:TableCell>

             <asp:TableCell>
                  <asp:ImageButton ID="ImageButton1" runat="server" PostBackUrl="~/spaoffer.aspx" ImageUrl="~/folder/spa.jpg" Height="450" Width="450" />
            </asp:TableCell>

              <asp:TableCell>
                 <asp:ImageButton ID="ImageButton3" runat="server" PostBackUrl="~/skinoffer.aspx" ImageUrl="~/folder/skin.jpg" Height="450" Width="450" />
            </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
 
</asp:Content>

