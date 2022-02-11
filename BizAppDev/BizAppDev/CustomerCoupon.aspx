﻿<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerCoupon.aspx.cs" Inherits="BizAppDev.CustomerCoupon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style2 {

        }
        </style>
    <h1>
        <br />
        <span class="auto-style2">Coupon store</span></h1>
                <asp:DataList ID="CouponDatalist" runat="server" DataKeyField="CouponID" DataSourceID="couponDatlist" OnItemCommand="CouponDatalist_ItemCommand" CellPadding="20" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div class="container mt-5 mb-5">
    <div class="d-flex justify-content-center row">
        <div class="col-md-10">
            <div class="row p-2 bg-white border rounded">
                <div class="col-md-3 mt-1"><img class="img-fluid img-responsive rounded product-image" src="https://i.imgur.com/QpjAiHq.jpg"></div>
                <div class="col-md-6 mt-1">
                    <h5>Quant olap shirts</h5>
                    <div class="d-flex flex-row">
                        <div class="ratings mr-2"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div><span>310</span>
                    </div>
                    <div class="mt-1 mb-1 spec-1"><span>100% cotton</span><span class="dot"></span><span>Light weight</span><span class="dot"></span><span>Best finish<br></span></div>
                    <div class="mt-1 mb-1 spec-1"><span>Unique design</span><span class="dot"></span><span>For men</span><span class="dot"></span><span>Casual<br></span></div>
                    <p class="text-justify text-truncate para mb-0">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.<br><br></p>
                </div>
                <div class="align-items-center align-content-center col-md-3 border-left mt-1">
                    <div class="d-flex flex-row align-items-center">
                        <h4 class="mr-1">$13.99</h4><span class="strike-text">$20.99</span>
                    </div>
                    <h6 class="text-success">Free shipping</h6>
                    <div class="d-flex flex-column mt-4"><button class="btn btn-primary btn-sm" type="button">Details</button><button class="btn btn-outline-primary btn-sm mt-2" type="button">Add to wishlist</button></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="card" style="width:240px;">
                <div class="card-header">
                        <asp:Label ID="CouponIDLabel" style="font-size:0px;" runat="server" Text='<%# Eval("CouponID") %>' />
                                            <asp:Label ID="cNameLabel" runat="server" Text='<%# Eval("cName") %>' />
                </div>
                <div class="card-body">
                    <p class="card-title">

                        Cost: <asp:Label ID="costLabel" runat="server" Text='<%# Eval("cost") %>' />
                        <br />
                        Description: <asp:Label ID="lbl_Desc" runat="server" Text='<%# Eval("cDesc") %>' /><br />
                                                Category: <asp:Label ID="lbl_Category" runat="server" Text='<%# Eval("category") %>' /><br />

                        Discount: <asp:Label ID="discountLabel" runat="server" Text='<%# Eval("discount") %>' /><br />
                        Valid for : <asp:Label ID="validDaysLabel" runat="server" Text='<%# Eval("validDays") %>' /> day(s)
                  <asp:Label ID="validMonthsLabel" runat="server" Text='<%# Eval("validMonths") %>' /> Month(s)
                         <asp:Label ID="validYearsLabel" runat="server" Text='<%# Eval("validYears") %>' /> Year(s)

                        </div>
                    </p>
                    Quantity:<asp:TextBox ID="tb_quantity" runat="server" CssClass="form-control"></asp:TextBox>
                    <p class="card-text">

                        <asp:Button ID="btn_Purchase" runat="server" CommandName="makePurchase" Text="Buy" />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="couponDatlist" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Coupon]"></asp:SqlDataSource>
</asp:Content>
