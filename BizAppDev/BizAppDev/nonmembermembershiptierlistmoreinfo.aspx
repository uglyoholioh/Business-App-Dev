<%@ Page Title="" Language="C#" MasterPageFile="~/nonmembermaster.Master" AutoEventWireup="true" CodeBehind="nonmembermembershiptierlistmoreinfo.aspx.cs" Inherits="BizAppDev.nonmembermembershiptierlistmoreinfo" %>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    <link rel="stylesheet" href="css/productdesc.css" />
        <style>
.checked {
  color: orange;
}
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
  
   <div class="header" style=" padding: 60px;
  text-align: center;
  background: #FEBBC1;
  color: white;
  font-size: 30px;height:320px;">
 <br />
        <br />
        <h1>Membership Tier List Description</h1>
 
</div>
       <br />
       <br />
    <br />
    <br />
    <br />
</div>
  
            
            <img align="left" style="height:425px;width:550px; margin-left:350px; "  src="https://restrictcontentpro.com/wp-content/uploads/2021/07/What-is-the-Difference-Between-a-Membership-and-a-Subscription-33803.png" alt="Card image cap">
            <div class="card" style="width:500px;">
                      <h1><asp:Label ID="Label1" runat="server" ></asp:Label> </h1>
                <p class="card-text">
            membership name:
            <asp:Label ID="membership_nameLabel" runat="server"  /></p>
            <p class="card-text">
            membership desc:
            <asp:Label ID="membership_descLabel" runat="server" /></p>
            <p class="card-text">
            membership benefits:
            <asp:Label ID="membership_benefitsLabel" runat="server"  /></p>
            <p class="card-text">
            membership price:
            <asp:Label ID="membership_priceLabel" runat="server"  /></p>
            <p class="card-text">
            membership length:
            <asp:Label ID="membership_lengthLabel" runat="server"  /></p>
            <br />
                 
                   <form id="form1">
                        <button type="submit">Pay</button>
                    </form>
                    <script src="https://js.stripe.com/v3/"></script>
                     <script>
                         var stripe = Stripe('pk_test_51KHh6JKpf4tgYB9KQPNyK7sTbJbBHRpAOcPdmWJNcnrOwiTbW1YKi5dTgZpd9FxkCNPlcSw4cURmZQCuH1uLnGvN00UzUnEkXO');
                         var form = document.getElementById("form1");
                        
                         form.addEventListener('submit', function (e){
                             e.preventDefault();

                             stripe.redirectToCheckout({ sessionId: "<%=sessionIds%>" });
                         })
                     </script>
  
<br />
     


</asp:Content>
