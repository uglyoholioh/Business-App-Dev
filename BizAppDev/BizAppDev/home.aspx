<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BizAppDev.home" %>
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
    <link rel="stylesheet" href="css/home.css" />
   <div class="header">
  <h1>Welcome To Kim Simi Zua</h1>
                               <asp:Label ID="lbl_Expiry" runat="server" Text="Label"></asp:Label>

  <a href="home.aspx">Products</a>
</div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Product_ID" DataSourceID="SqlDataSource1">
        <ItemTemplate>
           <div class="card" style="width:300px; height:100px; ">
               <asp:Image ID="Image1" runat="server" ImageUrl='<%# "/images/" + Eval("Product_Image") %>'   Height="300px" />
                    <div class="card-body">
                      <h5 class="card-title">
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label></h5>
            
                        <p class="card-text">
                          <asp:Label ID="Label3" runat="server" Text='<%# Eval("Unit_Price", "{0:C}") %>'></asp:Label></p>
                        <a class="btn btn-primary" href="product_desc.aspx?id=<%#Eval("Product_ID")%>">View</a>
                    </div>
                  </div>
                </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>

</asp:Content>