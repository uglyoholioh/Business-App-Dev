<%@ Page Title="" Language="C#" MasterPageFile="~/nonmembermaster.Master" AutoEventWireup="true" CodeBehind="nonmemberpackage_desc.aspx.cs" Inherits="BizAppDev.nonmemberpackage_desc" %>
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
        </style>
  
   <div class="header" style=" padding: 60px;
  text-align: center;
  background: #FEBBC1;
  color: white;
  font-size: 30px;height:320px;">
 <br />
        <br />
        <h1>Package Description</h1>
 
</div>
    <br />
    <br />
    <br />
    
        <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="package_Name" DataSourceID="SqlDataSource1" CaptionAlign="Right" CssClass="about" Height="500px" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand">
      
        <ItemTemplate>
             <asp:Image ID="Image1" runat="server" Height="175px" ImageAlign="Left" ImageUrl='<%# "/images/" + Eval("package_Image") %>' />
             <div class="card">
              <h1><asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("package_Name") %>' /></h1>
                <h1><asp:Label ID="Label1" runat="server" Text='<%# Eval("package_items") %>' /></h1>
             
              <h7> <asp:Label ID="Product_DescLabel" runat="server" Text='<%# Eval("package_Desc") %>' /></h7>
              <h5><asp:Label ID="Unit_PriceLabel" runat="server" Text='<%# Eval("Package_Price", "{0:C}") %>' />     <span class="fa fa-star checked"></span>
                                                                                                                <span class="fa fa-star checked"></span>
                                                                                                                <span class="fa fa-star checked"></span>
                                                                                                                <span class="fa fa-star"></span>
                                                                                                                <span class="fa fa-star"></span> </h5>
             
                 
               <center><asp:Button ID="btn_aDDTOCART" runat="server" Text="Back" BackColor="Blue" ForeColor="White"  Width="100px" CommandName="addtocart" CommandArgument='<%#Eval("package_name")%>'  /></center>
              </div>
           
        </ItemTemplate>
     </asp:DataList>
   
    

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT [package_Name], [package_Items], [package_Desc], [package_Price], [package_Image] FROM [Package] WHERE ([package_Name] = @package_Name)">
         <SelectParameters>
             <asp:QueryStringParameter Name="package_Name" QueryStringField="id" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
</asp:Content>
