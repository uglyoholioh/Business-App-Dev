﻿<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="CustomerMoreInfo.aspx.cs" Inherits="BizAppDev.CustomerMoreInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <header class="bg-white shadow-sm px-4 py-3 z-index-20">
            <div class="container-fluid px-0">
              <h2 class="mb-0 p-1">Customers</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="bg-white">
            <div class="container-fluid">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb mb-0 py-3">
                  <li class="breadcrumb-item"><a class="fw-light" href="~/Customer.aspx">Customer</a></li>
                  
                </ol>
              </nav>
            </div>
          </div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand1">
            <ItemTemplate>
                <div class="col-md-4">
                  <div class="card text-white bg-primary" style="margin-left:300px; height:484px; width:500px; left: 0px; top: 0px;">
                    
                    <div class="card-body">
                      
                      <p class="card-text">
                          <h5 class="card-title">
                          <asp:Label ID="lbl_id" runat="server" Text='<%# Eval("customer_id") %>'></asp:Label>
                          ,
                          <asp:Label ID="lbl_name" runat="server" Text='<%# Eval("customer_name") %>'></asp:Label>
                        </h5>

                          Customer Email:
                          <asp:Label ID="lbl_email" runat="server" Text='<%# Eval("customer_email") %>'></asp:Label>

                          <p class="card-text">
                              Customer Contact:
                              <asp:Label ID="lbl_contact" runat="server" Text='<%# Eval("customer_contactNo") %>'></asp:Label>
                          </p>
                          <p class="card-text">
                              Member status:<asp:Label ID="lbl_member" runat="server" Text='<%# Eval("customer_member") %>'></asp:Label>
                          </p>
                          <p class="card-text">
                              Member Address:
                              <asp:Label ID="lbl_address" runat="server" Text='<%# Eval("customer_address") %>'></asp:Label>
                          </p>
                          <p class="card-text">
                              Member Date of Birth:
                              <asp:Label ID="lbl_DOB" runat="server" Text='<%# Eval("DOB") %>'></asp:Label>
                          </p>
                          <p class="card-text">
                              Member Payment:<asp:Label ID="lbl_payment" runat="server" Text='<%# Eval("customer_paymentmethod") %>'></asp:Label>
                          </p>
                          <p class="card-text">
                              Member Remarks:
                              <asp:Label ID="lbl_remarks" runat="server" Text='<%# Eval("customer_remarks") %>'></asp:Label>
                          </p>
                          <p class="card-text">
                              Point Tier ID:
                              <asp:Label ID="lbl_pointid" runat="server" Text='<%# Eval("pointTierID") %>'></asp:Label>
                          </p>
                          <p class="card-text">
                              level of Points:
                              <asp:Label ID="lbl_lvlpoints" runat="server" Text='<%# Eval("lvlPoints") %>'></asp:Label>
                          </p>
                          <p class="card-text">
                              <asp:Button ID="btn_back" runat="server" CommandName="back" Text="Back" class="btn btn-secondary" style="color: white;"/>
                          </p>

                          <p>
                          </p>

                          <p>
                          </p>

                          <p>
                          </p>

                      </p>
                        
                    </div>
                  </div>
                 </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Customers] WHERE ([customer_id] = @customer_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="customer_id" QueryStringField="customerid" Type="String" Direction = "Input" DefaultValue='<%= Request.QueryString["customerid"] %>'/>
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
