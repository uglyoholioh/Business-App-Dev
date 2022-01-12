<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerCoupon.aspx.cs" Inherits="BizAppDev.CustomerCoupon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-weight: 600;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <br />
        <span class="auto-style2">Coupon store</span></h1>
                <asp:DataList ID="CouponDatalist" runat="server" DataKeyField="CouponID" DataSourceID="couponDatlist" OnItemCommand="CouponDatalist_ItemCommand">
                    <ItemTemplate>
            <div class="card" style="width:240px;">
                <div class="card-header">
                    Coupon ID:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CouponID") %>' />
                </div>
                <div class="card-body">
                    <h4 class="card-title">

                        <asp:Label ID="lbl_Name" runat="server" Text="Edit Tier" style="text-decoration:underline"/>
                        <br />
                        <br />
                                                  <label class="form-label">Name</label>
                        <asp:TextBox ID="tb_Name" runat="server" CssClass="form-control"></asp:TextBox>
                                                <br />                          <label class="form-label">description</label>

                        <asp:TextBox ID="tb_descr" runat="server" CssClass="form-control"></asp:TextBox>
                                                <br />
                                                  <label class="form-label">Price</label>

                        <asp:TextBox ID="tb_Price" runat="server" CssClass="form-control"></asp:TextBox>
                                                <br />
                        </div>

                        CouponID:
                        <asp:Label ID="CouponIDLabel" runat="server" Text='<%# Eval("CouponID") %>' />
                        <br />
                        cDesc:
                        <asp:Label ID="cDescLabel" runat="server" Text='<%# Eval("cDesc") %>' />
                        <br />
                        cName:
                        <asp:Label ID="cNameLabel" runat="server" Text='<%# Eval("cName") %>' />
                        <br />
                        amount:
                        <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                        <br />
                        cost:
                        <asp:Label ID="costLabel" runat="server" Text='<%# Eval("cost") %>' />
                        <br />
                        discount:
                        <asp:Label ID="discountLabel" runat="server" Text='<%# Eval("discount") %>' />
                        <br />
                        expiry:
                        <asp:Label ID="expiryLabel" runat="server" Text='<%# Eval("expiry") %>' />
                        <br />
                        code:
                        <asp:Label ID="codeLabel" runat="server" Text='<%# Eval("code") %>' />
                        <br />
                        Cust_ID:
                        <asp:Label ID="Cust_IDLabel" runat="server" Text='<%# Eval("Cust_ID") %>' />
                        <br />
                        <asp:Button ID="btn_Purchase" runat="server" CommandName="makePurchase" Text="Buy" />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="couponDatlist" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Coupon]"></asp:SqlDataSource>

</asp:Content>
