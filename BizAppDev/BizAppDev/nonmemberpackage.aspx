<%@ Page Title="" Language="C#" MasterPageFile="~/nonmembermaster.Master" AutoEventWireup="true" CodeBehind="nonmemberpackage.aspx.cs" Inherits="BizAppDev.nonmemberpackage" %>
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
    <div class="header" style=" padding: 60px;
  text-align: center;
  background: #FEBBC1;
  color: white;
  font-size: 30px;height:320px;">
 <br />
        <br />
        <h1>Packages</h1>
 
</div>
    <br />
    <h3 class="text-center">  Do Note Packages Are only available in-store If you wish to buy Kindly make a trip down to the store</h3><br />
    <center> <asp:DropDownList ID="DropDownList1" runat="server">
          <asp:ListItem>All Package</asp:ListItem>
          <asp:ListItem>Chinese New Year</asp:ListItem>
          <asp:ListItem>Hungry Ghost Festival</asp:ListItem>
          <asp:ListItem>Qing Ming Festival</asp:ListItem>
          <asp:ListItem>Death Anniversary Prayers</asp:ListItem>
      </asp:DropDownList>
      <asp:Button ID="Button1" runat="server" Height="24px" OnClick="Button1_Click" Text="Filter by Festival" Width="138px" />
    <br />
    </center> 
        <br />
    <div>
      
       <div style="text-align:center;">
     
           

       
        
       </h4>
     
      

       &nbsp;&nbsp;&nbsp; <br />
       <br />
   
       <br />
           </div>
        <div style="text-align:center;margin-left:200px;">
       <asp:DataList ID="DataList1" runat="server" DataKeyField="package_Name" DataSourceID="SqlDataSource1">
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemTemplate>
           <div class="card" style="width:300px; height=100px; ">
               <asp:Image ID="Image1" runat="server" ImageUrl='<%# "/images/" + Eval("package_Image") %>'   Height="300px" />
                    <div class="card-body">
                      <h5 class="card-title">
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("package_Name") %>'></asp:Label></h5>
            
                         
                        <p class="card-text">
                          <asp:Label ID="Label3" runat="server" Text='<%# Eval("package_Price", "{0:C}") %>'></asp:Label></p>
                        <a class="btn btn-primary" href="nonmemberpackage_desc.aspx?id=<%#Eval("package_Name")%>">View</a>
                      
                    </div>
                  </div>
                </div>
        </ItemTemplate>
       </asp:DataList>
            </div>
       <br />
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Package]"></asp:SqlDataSource>
      
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT [package_Name], [package_Price], [package_Image] FROM [Package] WHERE ([package_festival] = @package_festival)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="package_festival" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
      
   </div>
        </div>
</asp:Content>
