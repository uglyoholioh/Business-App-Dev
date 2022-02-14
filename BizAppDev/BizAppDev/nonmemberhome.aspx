﻿<%@ Page Title="" Language="C#" MasterPageFile="~/nonmembermaster.Master" AutoEventWireup="true" CodeBehind="nonmemberhome.aspx.cs" Inherits="BizAppDev.nonmemberhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- Choices CSS-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/admin-premium/2-0/vendor/choices.js/public/assets/styles/choices.min.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/admin-premium/2-0/css/style.default.premium.2a30c8f8.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/admin-premium/2-0/css/custom.0a822280.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="https://d19m59y37dris4.cloudfront.net/admin-premium/2-0/img/favicon.3903ee9d.ico">
    <link rel="stylesheet" href="css/productcatalog.css" />
    <link rel="stylesheet" href="css/nonmemberhome.css" />
    <link rel="stylesheet" href="css/contact.css" />
     <div class="header" >
 
       <p>&nbsp;</p>
       <p>&nbsp;</p>
       <div class="headerbox" style="border:solid;margin-left:300px;margin-right:300px;padding:50px"> 
       <h1 style="font-size:50px;">Welcome to Kim Simi Zua</h1>
           <asp:Button ID="Button_shopnow" runat="server" Text="Shop Now" CssClass="btn btn-dark" style="scale:150%;" Height="50px" Width="100px" OnClick="Button_shopnow_Click" />
  
           </div>
       <br />
       <br />
       <br />
</div>
    <div>
        <center>
        <h1 style="font-size:50px; padding:50px;">Product Category</h1>
            </center>

    </div>
     <div class="categoty">
         <div class="container bootstrap snipets">
   
   <div class="row flow-offset-1">
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="images/josspaperg.jfif" width="350px" height="280px"     alt=""></a>
         <div class="caption">
           <h6><a href="nonmemberproductpage.aspx">Joss Paper</a></h6><span class="price">
           
         </div>
       </div>
     </div>
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="images/joss sticks.jfif" width="350px" height="280px" alt=""></a>
         <div class="caption">
           <h6><a href="nonmemberproductpage.aspx">Joss Sticks</a></h6><span class="price">
           
         </div>
       </div>
     </div>
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="images/hellmoney.jfif" width="350px" height="280px"     alt=""></a>
         <div class="caption">
           <h6><a href="nonmemberproductpage.aspx">Joss Money</a></h6><span class="price"></span>
         </div>
       </div>
     </div>
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="images/candles.jfif" width="350px" height="280px"     alt=""></a>
         <div class="caption">
           <h6><a href="nonmemberproductpage.aspx">Candles</a></h6><span class="price">
             </span>
         </div>
       </div>
     </div>
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="images/custom product.jpg" width="350px" height="280px"     alt=""></a>
         <div class="caption">
           <h6><a href="Loginpage.aspx">Custom Product</a></h6><span class="price"></span>
         </div>
       </div>
     </div>
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="images/packages.jfif" width="350px" height="280px"     alt=""></a>
         <div class="caption">
           <h6><a href="nonmemberproductpage.aspx">Packages</a></h6><span class="price"></span>
         </div>
       </div>
     </div>
   <hr />
   </div>
 </div>
     </div>
    <div class="contactUs">
        <div class="title">
            <h1 style="color:black; font-size:50px; padding:50px;">Get in Touch</h1>
            <asp:Label ID="lbl_confirm" runat="server" Font-Size="Large" ForeColor="Green"></asp:Label>
        </div>
        <div class="box">
            <div class="contact form">
                <h3>Send a Message  </h3> 
                <form>
                 <div class="formBox">
                        <div class="row50">
                             <div class="inputBox">
                              <span>First Name</span>
                              <asp:TextBox ID="tb_name" runat="server" placeholder="" Height="32px" Width="376px" BorderStyle="Solid" Font-Size="1.1em" ></asp:TextBox>
                             </div>
                            <div class="inputBox">
                              <span>Last Name</span>
                              <asp:TextBox ID="tb_lastname" runat="server" placeholder="" Height="32px" Width="376px"></asp:TextBox>
                             </div>
                        </div>
                   
                      <div class="row50">
                        <div class="inputBox">
                              <span>Subject</span>
                              <asp:TextBox ID="tb_subject" runat="server" placeholder ="" Height="32px" Width="378px" ></asp:TextBox>
                            </div>
                              <div class="inputBox">
                              <span>Email</span>
                              <asp:TextBox ID="tb_email" runat="server" placeholder="" Height="32px" Width="376px"></asp:TextBox>
                             </div>
                     </div>
                      <div class="row100">
                           <div class="inputBox">
                              <span>Message</span>
                               <asp:TextBox ID="tb_message" runat="server" placeholder="" TextMode="MultiLine" Height="220px" Width="915px"></asp:TextBox>
                            </div>
                     </div>
                     <div class="row100">
                         <div class="inputBox">
                             <asp:Button ID="btn_submit" runat="server" Text="Send" BackColor="#FF578B" ForeColor="White" Height="32px"  Width="120px" Font-Size="1.1em" OnClick="btn_submit_Click"  />
                         </div>
                     </div>
                </div>
                </form>
            </div>
            <div class="contact info">
                <h3>Contact Info</h3>
                <div class="infoBox">
                    <div>
                        <span><ion-icon name="location-outline"></ion-icon></span>
                        <p>The Trilinq #02-06,<br />Singapore 128807</p>

                    </div>
                    <div>
                        <span><ion-icon name="mail"></ion-icon></span>
                        <a href="mailto:josspapery2@gmail.com">josspapery2@gmail.com</a>

                    </div>
                    <div>
                        <span><ion-icon name="call"></ion-icon></span>
                        <a href="tel:+6599126292">+(65) 99126292</a>

                    </div>
                    <ul class="sci">
                        <li><a href="#"><ion-icon name="logo-facebook"></ion-icon> </a></li>
                        <li><a href="#"><ion-icon name="logo-twitter"></ion-icon></a></li>
                        <li><a href="#"><ion-icon name="logo-linkedin"></ion-icon></a></li>
                        <li><a href="#"><ion-icon name="logo-instagram"></ion-icon></a></li>
                    </ul>
                </div>
            </div>
            <div class="contact map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.761570448808!2d103.7594858153311!3d1.3187326620405668!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da1a9a9fcd5483%3A0x25a9c4635d70ede!2sThe%20Trilinq!5e0!3m2!1sen!2ssg!4v1641551951827!5m2!1sen!2ssg"  style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
     <hr />
    <div class="aboutus">

    </div>
</asp:Content>
