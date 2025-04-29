<%@ Page Title="" Language="C#" MasterPageFile="~/adminedit.Master" AutoEventWireup="true" CodeBehind="admindetails.aspx.cs" Inherits="BeautySalon.admindetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
      <center>
    <div class="carousel-item active" data-bs-interval="2000">
        <img src="folder/img5.jpg" class="d-block w-500" />
    </div>
    <div class="carousel-item" data-bs-interval="2000">
        <img src="folder/img6.jpg" class="d-block w-500"/>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
        <img src="folder/img7.jpg" class="d-block w-500" />
    </div>
  </div>
    </center>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</asp:Content>
