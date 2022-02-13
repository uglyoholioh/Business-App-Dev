<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="nonmemberproductpage.aspx.cs" Inherits="BizAppDev.nonmemberproductpage" %>
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
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
    <div>
       <h4>Search For A Product:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="tb_search" runat="server"></asp:TextBox><asp:Button ID="btn_search" runat="server" Text="Search" Height="35px" Width="83px" OnClick="btn_searchproduct_Click" />
       </h4>
       <div style="text-align:center;">
        <asp:LinkButton ID="lb_Allp" runat="server" OnClick="lb_Allp_Click">All Products</asp:LinkButton>&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lb_jsticks" runat="server" OnClick="lb_jsticks_Click">Joss Sticks</asp:LinkButton>
      
       &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lb_Jpaper" runat="server" OnClick="lb_Jpaper_Click">Joss Paper</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lb_jmoney" runat="server" OnClick="lb_jmoney_Click">Joss Money</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lb_candles" runat="server" OnClick="lb_candles_Click" >Candles</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lb_cProduct" runat="server" OnClick="lb_cProduct_Click" >Custom Products</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lb_packages" runat="server" OnClick="lb_packages_Click" >Packages</asp:LinkButton>
       <br />
           </div>
       <asp:DataList ID="DataList1" runat="server" DataKeyField="Product_ID" DataSourceID="SqlDataSource1">
            <ItemTemplate>
           <div class="card" style="width:300px; height=100px; ">
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
       <br />
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Products] WHERE ([keywordsearch] LIKE '%' + @keywordsearch + '%')">
           <SelectParameters>
               <asp:ControlParameter ControlID="tb_search" Name="keywordsearch" PropertyName="Text" Type="String" />
           </SelectParameters>
       </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Products] WHERE ([Category] = @Category)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Category" QueryStringField="categories" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
       <br />
   </div>
        </div>

</asp:Content>
