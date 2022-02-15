<%@ Page Title="" Language="C#" MasterPageFile="~/nonmembermaster.Master" AutoEventWireup="true" CodeBehind="nonmembersuccess.aspx.cs" Inherits="BizAppDev.nonmembersuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style:"color: #FEBBC1;">
   
              <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- Choices CSS-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/admin-premium/2-0/vendor/choices.js/public/assets/styles/choices.min.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/admin-premium/2-0/css/style.default.premium.2a30c8f8.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/admin-premium/2-0/css/custom.0a822280.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="https://d19m59y37dris4.cloudfront.net/admin-premium/2-0/img/favicon.3903ee9d.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

  
            <div class="container" style="margin-left:350px; margin-top:150px;" >
	<div class="row">
        <div class="jumbotron" style="box-shadow: 2px 2px 4px #000000;">
            <h2 class="text-center">YOUR ORDER HAS BEEN RECEIVED</h2>
          <h3 class="text-center">Thank you for your payment, it’s processing</h3>
          
          <p class="text-center">Your order # is:   <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
               <br />
            <br />
      
          <p class="text-center">Thank You For Shopping With Us!</p>
           <p class="text-center">Would you like a confirmation Email sent to <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> ?</p>
            <br />
          <center>
            <asp:Button class="text-center" ID="btn_yes" runat="server" OnClick="btn_yes_Click" Text="Yes" />
            <asp:Button  class="text-center" ID="btn_no" runat="server" OnClick="btn_no_Click" Text="no" />
<br />
              </center>
        </ItemTemplate>
    </asp:DataList>
</div>
          
        
   
        <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Label"></asp:Label>
        </div>
</asp:Content>
