<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="BizAppDev.CustomerDetails" %>
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
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"
   <script src="http://code.jquery.com/jquery-1.8.2.js"> </script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <br/>


    <div class="card">
                    <div class="card-body" style="width:1920px">
                      <h3 class="card-title">Your Profile</h3>
                      <div class="row gy-4">
                        <div class="col-sm-6 col-sm-6">
                          <label class="form-label">Username</label>               

                <asp:Label ID="lbl_Username" runat="server" class="form-control"></asp:Label>
                        </div>
                        <div class="col-sm-6 col-sm-6">
                          <label class="form-label">Email address</label>
                <asp:Label ID="lbl_Email" runat="server" class="form-control"></asp:Label>
                        </div>
                        <div class="col-sm-6">
                          <label class="form-label">First Name</label>
                <asp:Label ID="lbl_FirstName" runat="server" class="form-control"></asp:Label>
                        </div>
                        <div class="col-sm-6">
                          <label class="form-label">Last name</label>
                <asp:Label ID="lbl_LastName" runat="server" class="form-control"></asp:Label>
                        </div>
                        <div class="col-md-6">
                          <label class="form-label">Address</label>
                <asp:Label ID="lbl_Address" runat="server" class="form-control"></asp:Label>
                        </div>
                                                  <div class="col-md-6">
                          <label class="form-label">Date of Birth</label>
                <asp:Label ID="lbl_DOB" runat="server" class="form-control"></asp:Label>
                        </div>
                        <div class="col-sm-6 col-md-4">
                          <label class="form-label">Phone number</label>
                <asp:Label ID="lbl_PhoneNo" runat="server" class="form-control"></asp:Label>
                        </div>
                        <div class="col-sm-6 col-md-3">
                          <label class="form-label">Gender</label>
                <asp:Label ID="lbl_Gender" runat="server" class="form-control"></asp:Label>
                        </div>

                        
                      </div></div>
                    <div class="card-footer text-end">
                        <asp:Button ID="btn_Edit" OnClick="btn_Edit_Click" class="btn btn-primary" runat="server" Text="Edit Profile" />
                    </div>
                  </div>

</asp:Content>
