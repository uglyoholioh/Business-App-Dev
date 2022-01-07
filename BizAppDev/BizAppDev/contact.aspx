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
                              <span>Name</span>
                              <asp:TextBox ID="tb_name" runat="server" placeholder="Name" Height="32px" Width="376px" ></asp:TextBox>
                             </div>
                            <div class="inputBox">
                              <span>Email</span>
                              <asp:TextBox ID="tb_email" runat="server" placeholder="Email" Height="32px" Width="376px"></asp:TextBox>
                             </div>
                        </div>
                   
                      <div class="row50">
                        <div class="inputBox">
                              <span>Subject</span>
                              <asp:TextBox ID="tb_subject" runat="server" placeholder ="Subject" Height="32px" Width="378px" ></asp:TextBox>
                            </div>
                            <div class="inputBox">
                              <span>Message</span>
                              <asp:TextBox ID="tb_message" runat="server" placeholder="Message" Height="32px" Width="375px" ></asp:TextBox>
                            </div>
                     </div>
                     <div class="row100">
                         <div class="inputBox">
                             <asp:Button ID="btn_submit" runat="server" Text="Send" BackColor="#0066FF" ForeColor="White" Height="32px"  Width="381px"  />
                         </div>
                     </div>
                </div>
                </form>
            </div>
            <div class="contact info"></div>
            <div class="contact map"></div>
        </div>
    </div>
</asp:Content>
