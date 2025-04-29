<%@ Page Title="" Language="C#" MasterPageFile="~/appointment.Master" AutoEventWireup="true" CodeBehind="billing.aspx.cs" Inherits="BeautySalon.billing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="250" src="folder/admin-img1.jpg"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Book Your Appointment</h4>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                   <div class="row">

                     <div class="col-md-6">  
                         <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>                   
                     </div>  
                                      
                     <div class="col-md-6">
                         <label>Date Of Appointment</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date Of Birth" TextMode="Date"></asp:TextBox>
                            <asp:Label ID="Label3" runat="server" Text="Time"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox6" runat="server" TextMode="Time"></asp:TextBox>
                            <br />
                            <br />
                        </div> 
                     </div>

                  </div>

                   <div class="row">

                     <div class="col-md-6">  
                         <label>
                         <br />
                         Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>                   
                     </div>  
                                      
                     <div class="col-md-6">
                         <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox><br />
                        </div> 
                     </div>

                  </div>

                    <div class="row">

                     <div class="col-md-4">  
                         <label>OPTIONS</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Highlights" Value="Highlights" />
                              <asp:ListItem Text="Lowlights" Value="Lowlights" />
                              <asp:ListItem Text="Ombre" Value="Ombre" />
                              <asp:ListItem Text="OmbreHighlights" Value="OmbreHighlights" />
                              <asp:ListItem Text="Aroma therapy" Value="Aroma therapy" />
                              <asp:ListItem Text="Body Massage" Value="Body Massage" />
                            <asp:ListItem Text="Thai Foot Massage" Value="Thai Foot Massage" />
                              <asp:ListItem Text="Facial" Value="Facial" />
                              <asp:ListItem Text="Waxing" Value="Waxing" />
                              <asp:ListItem Text="Threading" Value="Threading" />
                              <asp:ListItem Text="Festive Make-up" Value="Festive Make-up" />
                              <asp:ListItem Text="Soft Make-up" Value="Soft Make-up" />
                              <asp:ListItem Text="Bridal Make-up" Value="Bridal Make-up" />

                           </asp:DropDownList>
                        </div>                   
                     </div>  
                                      
                      <div class="col-md-6">
                         
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Email ID" Visible="False"></asp:TextBox>
                            <br />
                            <br />
                        </div> 
                     </div>

                   

                  </div>

                  <div class="row">
                     <div class="col">
                        
                                            
                         <div class="d-grid gap-2">
                            <asp:Button class="btn btn-info btn-lg" ID="Button3" runat="server" Text="BOOK" OnClick="Button3_Click" />
                        </div>
                       
                     </div>
                  </div>

                   <div>
                       <asp:Panel ID="Panel1" runat="server" Visible="False">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </asp:Panel>
                   </div>
               </div>
            </div>
             <a href="homepage.aspx"><< Back to Home</a><br /><br />
         </div>
       
      </div>
   </div>


    
</asp:Content>
