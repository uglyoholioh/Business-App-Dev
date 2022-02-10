<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerCoupons.aspx.cs" Inherits="BizAppDev.CustomerCoupons" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /*
 CSS for the main interaction
*/
.tabset{
    margin-left:20%;
    margin-top:10%;
}
.tabset > input[type="radio"] {
  position: absolute;
  left: -200vw;
}

.tabset .tab-panel {
  display: none;
}

.tabset > input:first-child:checked ~ .tab-panels > .tab-panel:first-child,
.tabset > input:nth-child(3):checked ~ .tab-panels > .tab-panel:nth-child(2),
.tabset > input:nth-child(5):checked ~ .tab-panels > .tab-panel:nth-child(3),
.tabset > input:nth-child(7):checked ~ .tab-panels > .tab-panel:nth-child(4),
.tabset > input:nth-child(9):checked ~ .tab-panels > .tab-panel:nth-child(5),
.tabset > input:nth-child(11):checked ~ .tab-panels > .tab-panel:nth-child(6) {
  display: block;
}

/*
 Styling
*/
body {
  font: 16px/1.5em "Overpass", "Open Sans", Helvetica, sans-serif;
  color: #333;
  font-weight: 300;
}

.tabset > label {
  position: relative;
  display: inline-block;
  padding: 15px 15px 25px;
  border: 1px solid transparent;
  border-bottom: 0;
  cursor: pointer;
  font-weight: 600;
}

.tabset > label::after {
  content: "";
  position: absolute;
  left: 15px;
  bottom: 10px;
  width: 22px;
  height: 4px;
  background: #8d8d8d;
}

.tabset > label:hover,
.tabset > input:focus + label {
  color: #06c;
}

.tabset > label:hover::after,
.tabset > input:focus + label::after,
.tabset > input:checked + label::after {
  background: #06c;
}

.tabset > input:checked + label {
  border-color: #ccc;
  border-bottom: 1px solid #fff;
  margin-bottom: -1px;
}

.tab-panel {
  padding: 30px 0;
  border-top: 1px solid #ccc;
  min-width:900px;
}

/*
 Demo purposes only
*/
*,
*:before,
*:after {
  box-sizing: border-box;
}



.tabset {
  max-width: 65em;
}
    </style>
<!-- 
  
  Radio version of tabs.

  Requirements:
  - not rely on specific IDs for CSS (the CSS shouldn't need to know specific IDs)
  - flexible for any number of unkown tabs [2-6]
  - accessible

  Caveats:
  - since these are checkboxes the tabs not tab-able, need to use arrow keys

  Also worth reading:
  http://simplyaccessible.com/article/danger-aria-tabs/
-->


            <asp:SqlDataSource ID="ddlPersonal" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT [category] FROM [CustCoupon]"></asp:SqlDataSource>


    <asp:SqlDataSource ID="coupCategory" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT [category] FROM [Coupon]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SeasonalCoup" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Coupons]"></asp:SqlDataSource>
    
    <asp:DataList ID="DataList3" runat="server" DataKeyField="AsgnID" DataSourceID="expiredDS">
        <ItemTemplate>
            AsgnID:
            <asp:Label ID="AsgnIDLabel" runat="server" Text='<%# Eval("AsgnID") %>' />
            <br />
            Cust_ID:
            <asp:Label ID="Cust_IDLabel" runat="server" Text='<%# Eval("Cust_ID") %>' />
            <br />
            CouponID:
            <asp:Label ID="CouponIDLabel" runat="server" Text='<%# Eval("CouponID") %>' />
            <br />
            Code:
            <asp:Label ID="CodeLabel" runat="server" Text='<%# Eval("Code") %>' />
            <br />
            coupName:
            <asp:Label ID="coupNameLabel" runat="server" Text='<%# Eval("coupName") %>' />
            <br />
            coupQuantity:
            <asp:Label ID="coupQuantityLabel" runat="server" Text='<%# Eval("coupQuantity") %>' />
            <br />
            coupDiscount:
            <asp:Label ID="coupDiscountLabel" runat="server" Text='<%# Eval("coupDiscount") %>' />
            <br />
            coupExpiry:
            <asp:Label ID="coupExpiryLabel" runat="server" Text='<%# Eval("coupExpiry") %>' />
            <br />
            coupDesc:
            <asp:Label ID="coupDescLabel" runat="server" Text='<%# Eval("coupDesc") %>' />
            <br />
            category:
            <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="expiredDS" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [CustCoupon]">
        <SelectParameters>
            <asp:Parameter DefaultValue="currentDate" Name="coupExpiry" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="ddlCoupon" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT [category] FROM [Coupon]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="PersonalCoup" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [CustCoupon]" FilterExpression="category='{0}'">
        <FilterParameters>
            <asp:ControlParameter Name="category" ControlID="ddl_Category" PropertyName="SelectedValue" />
        </FilterParameters>
    </asp:SqlDataSource>

<div class="tabset">
  <!-- Tab 1 -->
  <input type="radio" name="tabset" id="tab1" aria-controls="marzen" checked>
  <label for="tab1">Active Coupons</label>
  <!-- Tab 2 -->
  <input type="radio" name="tabset" id="tab2" aria-controls="rauchbier">
  <label for="tab2">Seasonal coupons</label>
      <!-- Tab 3 -->

      <input type="radio" name="tabset" id="tab3" aria-controls="expired">
  <label for="tab3">Expired coupons</label>

  
  <div class="tab-panels">
    <section id="marzen" class="tab-panel">
        <h3>Filter Coupon Category</h3>
        <asp:DropDownList ID="ddl_Category" runat="server" DataSourceID="ddlCoupon" DataTextField="category" DataValueField="category" OnSelectedIndexChanged="ddl_Category_SelectedIndexChanged" AutoPostBack="true" style="float:left;">
    </asp:DropDownList>

            <asp:DataList ID="DataList1" runat="server" DataKeyField="AsgnID" DataSourceID="PersonalCoup" RepeatColumns="2" RepeatDirection="Horizontal" CellPadding="20" style="float:left;" >
                <ItemTemplate>
                    <div class="card" style="min-width:400px">
                    <div class="card-body">
                      <h4 class="card-title"><asp:Label ID="coupNameLabel" runat="server" Text='<%# Eval("coupName") %>' /></h4>
                      <p class="card-text"><asp:Label ID="AsgnIDLabel" runat="server" Text='<%# Eval("coupDesc") %>' />
</p><a class="btn btn-outline-primary" href="#">Use Coupon Code:                     <asp:Label ID="CodeLabel" runat="server" Text='<%# Eval("Code") %>' />
</a>
                    </div>
                    <div class="card-footer text-muted">Expires: <asp:Label ID="Cust_IDLabel" runat="server" Text='<%# Eval("coupExpiry") %>' />
</div>
                  </div>



                </ItemTemplate>
    </asp:DataList>
  </section>
    <section id="rauchbier" class="tab-panel">
<asp:DataList ID="DataList2" runat="server" DataKeyField="coupon_ID" DataSourceID="SeasonalCoup" RepeatColumns="2" RepeatDirection="Horizontal" >
        <ItemTemplate>
                                <div class="card" style="min-width:400px">
                    <div class="card-body">
                      <h4 class="card-title"><asp:Label ID="coupNameLabel" runat="server" Text='<%# Eval("coupon_Name") %>' /></h4>
                      <p class="card-text"><asp:Label ID="AsgnIDLabel" runat="server" Text='<%# Eval("coup_Desc") %>' />            <asp:Label ID="coup_disccountamtLabel" runat="server" Text='<%# Eval("coup_disccountamt") %>' />

</p><a class="btn btn-outline-primary" href="#">Use Coupon Code:                     <asp:Label ID="CodeLabel" runat="server" Text='<%# Eval("coupon_Name") %>' />
</a>
                    </div>
                    <div class="card-footer text-muted">Expires: <asp:Label ID="Cust_IDLabel" runat="server" Text='<%# Eval("coupon_endDate") %>' />
</div>
                  </div>

        </ItemTemplate>
    </asp:DataList>    </section>
    <section id="expired" class="tab-panel">

    </section>

  </div>
  
</div>

</asp:Content>
