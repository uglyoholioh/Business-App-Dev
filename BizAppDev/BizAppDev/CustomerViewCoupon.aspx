<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerViewCoupon.aspx.cs" Inherits="BizAppDev.CustomerViewCoupon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
            <link rel="stylesheet" href="/css/form.css" type="text/css" />
        @import url('https://fonts.googleapis.com/css?family=Oswald');


section{padding:5% 0;}
.alizarin{background:#e74c3c}
.amethyst{background:#9b59b6}
.emerald{background:#2ecc71}
.midnight-blue{background:#2c3e50}
.peter-river{background:#3498db}
.dl{background:#f0f0f0;padding:30px 0;border-radius:20px;position:relative;display:inline-block;}
.dl:before{content:" ";height:20px;width:20px;background:#ddd;border-radius:20px;position:absolute;left:50%;top:20px;margin-left:-10px}
.dl .brand{text-transform:uppercase;letter-spacing:3px;padding:10px 15px;margin-top:10px;text-align:center;min-height:100px}
.dl .discount{min-height:50px;position:relative;font-size:80px;line-height:80px;text-align:center;font-weight:700;padding:20px 15px 0;color:#f1c40f}
.dl .discount:after{content:" ";border-right:20px solid transparent;border-left:20px solid transparent;position:absolute;bottom:-20px;left:20%}
.dl .discount.alizarin:after{border-top:20px solid #e74c3c}
.dl .discount.peter-river:after{border-top:20px solid #3498db}
.dl .discount.emerald:after{border-top:20px solid #2ecc71}
.dl .discount.amethyst:after{border-top:20px solid #9b59b6}
.dl .discount .type{font-size:20px;letter-spacing:1px;text-transform:uppercase;margin-top:-30px}
.dl .descr{color:#999;margin-top:10px;padding:20px 15px}
.dl .ends{padding:0 15px;color:coral;margin-bottom:10px}
.dl .coupon{min-height:50px;text-align:center;text-transform:uppercase;font-weight:700;font-size:18px;padding:20px 15px}
.dl .coupon a.open-code{color:#16a085}
.dl .coupon .code{letter-spacing:1px;border-radius:4px;margin-top:10px;padding:10px 15px;color:#f1c40f;background:#f0f0f0}
.floatycontain {
    float:left;
    width:30%;

}
.brand {
    height:160px;

}

.descr {
    height:160px;
}
.row {
    width: 50%;
    float:right;
    padding: 20px;
}  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="CouponRetrieve">
        <ItemTemplate>
            CouponID:
            <asp:Label ID="CouponIDLabel" runat="server" Text='<%# Eval("CouponID") %>' />
            <br />
            Cust_ID:
            <asp:Label ID="Cust_IDLabel" runat="server" Text='<%# Eval("Cust_ID") %>' />
            <br />
            Code:
            <asp:Label ID="CodeLabel" runat="server" Text='<%# Eval("Code") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="CouponRetrieve" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT [CouponID], [Cust_ID], [Code] FROM [CustCoupon] WHERE ([Cust_ID] = @Cust_ID)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="1" Name="Cust_ID" SessionField="CustID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <h1 style ="margin-left:25%;">Your vouchers</h1>
    <asp:Repeater ID ="CouponRepeater" runat ="server" OnItemDataBound="CouponRepeater_ItemDataBound">
    <ItemTemplate>
        <div class="floatycontain">
<section id="labels">
  <div class="container">
	<div class="row">
        <div class="col-sm-6 col-md-3">
          <div class="dl">
            <div class="brand">
                <h2><%# Eval("cName") %></h2>
            </div>
            <div class="discount alizarin"><%# Eval("amount") %>
                <div class="type">off</div>
            </div>
            <div class="descr">
                <strong><%# Eval("cDesc") %></strong><br />
                <span>Expires:</span>
                  <asp:Label ID="expiry" runat="server" Text='<%#Eval("expiry") %>'/>
            </div>
            <div class="ends">
                <small>* Conditions and restrictions apply.</small>
            </div>
              <div class="coupon midnight-blue">
                  <a data-toggle="collapse" href="#code-1" class="open-code">            <asp:Label ID="CouponCode" runat="server" Text='<%#Eval("code") %>'/>
</a>
                  <div id="code-1" class="collapse code"><%#Eval("code") %></div>
              </div>
          </div>
                <asp:Button ID="btn_Claim" runat="server" OnClick="btn_Claim_Click" Text="Claim" />

        </div>

	</div>
  </div>
    </div>
</section>
        </ItemTemplate>
    </asp:Repeater>


    <script>
        https://goo.gl/YaXBll

    </script>
</asp:Content>

