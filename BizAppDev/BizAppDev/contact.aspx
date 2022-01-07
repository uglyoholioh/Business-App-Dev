<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="BizAppDev.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/contact.css" rel="stylesheet" />
    <div class="contactUs">
        <div class="title">
            <h2>Get in Touch</h2>
        </div>
        <div class="box">
            <div class="contact form">
                <h3>Send a Message</h3>
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
                             <asp:Button ID="btn_submit" runat="server" Text="Send" BackColor="#FF578B" ForeColor="White" Height="32px"  Width="120px" Font-Size="1.1em"  />
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
                        <p>The Trilinq,<br />Singapore 128807</p>

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
</asp:Content>
