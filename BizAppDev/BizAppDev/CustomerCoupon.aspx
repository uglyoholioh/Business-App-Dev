<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerCoupon.aspx.cs" Inherits="BizAppDev.CustomerCoupon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {

        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <br />
        <span class="auto-style2">Coupon store</span></h1>
                <asp:DataList ID="CouponDatalist" runat="server" DataKeyField="CouponID" DataSourceID="couponDatlist" OnItemCommand="CouponDatalist_ItemCommand" CellPadding="20" RepeatDirection="Horizontal">
                    <ItemTemplate>
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
                        Discount: <asp:Label ID="discountLabel" runat="server" Text='<%# Eval("discount") %>' /><br />
                        Expiry: <asp:Label ID="expiryLabel" runat="server" Text='<%# Eval("expiry") %>' /><br />

                        </div>
                    </p>
                    <asp:TextBox ID="tb_quantity" runat="server"></asp:TextBox>
                    <p class="card-text">

                        <asp:Button ID="btn_Purchase" runat="server" CommandName="makePurchase" Text="Buy" />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="couponDatlist" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Coupon]"></asp:SqlDataSource>

    <asp:Label ID="lbl_date" runat="server" Text="Label"></asp:Label>

</asp:Content>
