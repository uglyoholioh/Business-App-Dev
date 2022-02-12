<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerCoupon.aspx.cs" Inherits="BizAppDev.CustomerCoupon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style2 {

        }
        </style>
    <h1>
        <br />
        <span class="auto-style2">Coupon store</span></h1>
    <asp:TextBox ID="tb_Search" runat="server"></asp:TextBox><asp:Button ID="btn_Search" runat="server" Text="Search" class="btn btn-outline-primary" OnClick="btn_Search_Click"/>
                <asp:DataList ID="CouponDatalist" runat="server" DataKeyField="CouponID" DataSourceID="couponDatlist" OnItemCommand="CouponDatalist_ItemCommand" CellPadding="20" RepeatDirection="Horizontal" RepeatColumns="2">
                    <ItemTemplate>
                        <div class="container mt-5 mb-5">
    <div class="d-flex justify-content-center row">
        <div class="col-md-10">
            <div class="row p-2 bg-white border rounded">
                <div class="col-md-3 mt-1"><img class="img-fluid img-responsive rounded product-image" src="https://i.imgur.com/QpjAiHq.jpg"></div>
                <div class="col-md-6 mt-1">
                    <h5> <asp:Label ID="cNameLabel" runat="server" Text='<%# Eval("cName") %>' /></h5>
                    <div class="d-flex flex-row">
                        <span>ID:<asp:Label ID="CouponIDLabel" runat="server" Text='<%# Eval("CouponID") %>' />
</span>
                    </div>
                    <div class="mt-1 mb-1 spec-1"><span style="font-weight:bold">Category:&nbsp </span><asp:Label ID="lbl_Category" runat="server" Text='<%# Eval("category") %>' /></div>
                    <p class="text-justify text-truncate para mb-0"> <asp:Label ID="lbl_Desc" runat="server" Text='<%# Eval("cDesc") %>' /><br><br></p>
                                    <br /><span style="font-size:12px;">
                                        Quantity left: <asp:Label ID="lbl_leftQuantity" runat="server" Text='<%# Eval("amount") %>' />
                        Valid for : <asp:Label ID="validDaysLabel" runat="server" Text='<%# Eval("validDays") %>' /> day(s)
                  <asp:Label ID="validMonthsLabel" runat="server" Text='<%# Eval("validMonths") %>' /> Month(s)
                         <asp:Label ID="validYearsLabel" runat="server" Text='<%# Eval("validYears") %>' /> Year(s)</span>
                </div>
                <div class="align-items-center align-content-center col-md-3 border-left mt-1">
                    <div class="d-flex flex-row align-items-center">
                        <h4 class="mr-1"><asp:Label ID="costLabel" runat="server" Text='<%# Eval("cost") %>' /> Points</h4>
                    </div>
                    <h6 class="text-success"><asp:Label ID="discountLabel" runat="server" Text='<%# Eval("discount") %>' />% off</h6>
                    <asp:TextBox ID="tb_quantity" type="number" min="0" max='<%# Eval("amount") %>' runat="server" style="max-width:90%"></asp:TextBox>
                        <asp:Button ID="btn_Purchase" class="btn btn-outline-primary btn-sm mt-2" runat="server" CommandName="makePurchase" Text="Purchase" />
</div>
                </div>
            </div>
        </div>
    </div>
</div>

                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="couponDatlist" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Coupon]"></asp:SqlDataSource>
</asp:Content>
