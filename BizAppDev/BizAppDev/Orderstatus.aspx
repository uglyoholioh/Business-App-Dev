<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="Orderstatus.aspx.cs" Inherits="BizAppDev.Orderstatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Order details</h2>
        </div>
    </header>
    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item">Customer management</li>
            <li class="breadcrumb-item active"><a href="#">Order status</a></li>
        </ul>
    </div>
     <form id="form1" runat="server">
                    <section>
            <div class="container-fluid" id="div_Membership">
              <div class="row" style="margin-left:20px; ">
                <div class="col-md-6 col-lg-3" >
                    <h2>Processing Order</h2>

                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2"  DataKeyField="OrderID" style="width:1000px; margin-left:20px; margin-bottom:50px;" OnDeleteCommand="DataList2_DeleteCommand" OnEditCommand="DataList2_EditCommand">
                        <ItemTemplate>
                            OrderID:
                            <asp:Label ID="OrderIDLabel" runat="server" Text='<%# Eval("OrderID") %>' />
                            <br />                          
                            OrderDate:
                            <asp:Label ID="OrderDateLabel" runat="server" Text='<%# Eval("deliverydate") %>' />
                            <br />                         
                            OrderStatus:
                            <asp:Label ID="OrderStatusLabel" runat="server" Text='<%# Eval("OrderStatus") %>' />
                            <br />
                            <br />
                              <asp:Button ID="btn_details" runat="server" Text="Details" CommandName ="edit"/>
                            <asp:Button ID="btn_delete" runat="server" Text="Delete" CommandName ="Delete"/>
                                 
                            </ItemTemplate>
                  
                              </asp:DataList>
                            <br />

                      
         
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Orderdetails] WHERE OrderStatus != 'Pending'"></asp:SqlDataSource>
                    </div>
                  </div>
                </div>
                        </section>
    </form>
</asp:Content>
