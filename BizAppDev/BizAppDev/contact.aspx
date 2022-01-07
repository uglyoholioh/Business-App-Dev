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
                        <span></span>
                        <p>The Trilinq, Clementi<br />Singapore</p>

                    </div>
                    <div>
                        <span></span>
                  

                    </div>
                </div>
            </div>
            <div class="contact map"></div>
        </div>
    </div>
</asp:Content>
