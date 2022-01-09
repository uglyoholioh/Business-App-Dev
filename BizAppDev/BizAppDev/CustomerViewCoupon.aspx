<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerViewCoupon.aspx.cs" Inherits="BizAppDev.CustomerViewCoupon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
            <link rel="stylesheet" href="/css/form.css" type="text/css" />
        @import url('https://fonts.googleapis.com/css?family=Oswald');


section{padding:5% 0;display:flex;}
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
.dl .ends{padding:0 15px;color:#f1c40f;margin-bottom:10px}
.dl .coupon{min-height:50px;text-align:center;text-transform:uppercase;font-weight:700;font-size:18px;padding:20px 15px}
.dl .coupon a.open-code{color:#16a085}
.dl .coupon .code{letter-spacing:1px;border-radius:4px;margin-top:10px;padding:10px 15px;color:#f1c40f;background:#f0f0f0}
.floatycontain {
    float:left;

}
.row {
    width: 50%;
    float:right;
    padding: 20px;
}  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID ="CouponRepeater" runat ="server">
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
            <div class="discount alizarin">30%
                <div class="type">off</div>
            </div>
            <div class="descr">
                <strong>Mei mucius gloriatur reprimique mollis*.</strong> 
                Ad sonet perfecto antiopam mei, denique molestie ne has. 
            </div>
            <div class="ends">
                <small>* Conditions and restrictions apply.</small>
            </div>
            <div class="coupon midnight-blue">
                <a data-toggle="collapse" href="#code-1" class="open-code">Get a code</a>
                <div id="code-1" class="collapse code">LV5MAY14</div>
            </div>
          </div>
        </div>

	</div>
  </div>
    </div>
</section>
        </ItemTemplate>
    </asp:Repeater>

    <script>

    </script>
</asp:Content>

