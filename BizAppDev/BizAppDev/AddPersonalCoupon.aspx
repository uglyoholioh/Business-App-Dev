<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="AddPersonalCoupon.aspx.cs" Inherits="BizAppDev.AddPersonalCoupon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="card mb-0" style="margin-left:40px;margin-left:150px;">
                    <div class="card-header">
                      <div class="card-close">
                        <div class="dropdown">
                          <button class="dropdown-toggle text-sm" type="button" id="closeCard1" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></button>
                          <div class="dropdown-menu dropdown-menu-end shadow-sm" aria-labelledby="closeCard1"><a class="dropdown-item py-1 px-3 remove" href="#"> <i class="fas fa-times"></i>Close</a><a class="dropdown-item py-1 px-3 edit" href="#"> <i class="fas fa-cog"></i>Edit</a></div>
                        </div>
                      </div>
                     <h1 class="h4 mb-0" style="margin-left:250px;">Insert Personal Coupon</h1>
                    </div>
   <div class="card-body" >
        <div class="breadcrumb-holder container-fluid" style="font-size:15px;">
        <ul class="breadcrumb">
            <li class="breadcrumb-item">Coupons List</li>
            <li class="breadcrumb-item active">Add Personal Coupon</li>
        </ul>
    </div>
        <form id="form1" runat="server">

            <table class="autoComplete_wrapper">
                <tr>
                    <td style="width: 273px">Coupon Name:</td>
                    <td>
                        <asp:TextBox ID="tb_name" runat="server" Width="268px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 273px">Coupon Description:</td>
                    <td>
                        <asp:TextBox ID="tb_desc" runat="server" Height="105px" TextMode="MultiLine" Width="372px"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td style="width: 273px">Coupon Category:</td>
                    <td>
                        <asp:TextBox ID="tb_Category" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 273px">Amount of Coupons Available:</td>
                    <td>
                        <asp:TextBox ID="tb_amount" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 273px">Amount of Points to redeem:</td>
                    <td>
                        <asp:TextBox ID="tb_cost" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 273px">Discount Amount:</td>
                    <td>
                        <asp:TextBox ID="tb_discount" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 273px">Valid Days:</td>
                    <td>
                        <asp:TextBox ID="tb_validdays" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 273px; height: 29px;">Valid Months:</td>
                    <td style="height: 29px">
                        <asp:TextBox ID="tb_validmonths" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 273px">Valid Years:</td>
                    <td>
                        <asp:TextBox ID="tb_validyears" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 273px">&nbsp;</td>
                    <td>
                        <br />
                        <asp:Button ID="btn_insert" runat="server" OnClick="btn_insert_Click" Text="Insert" class="btn btn-primary" style="color: white;"/>
&nbsp;<asp:Button ID="btn_view" runat="server" OnClick="btn_view_Click" Text="View Personal Coupons" class="btn btn-primary" style="color: white;"/>
                    </td>
                </tr>
            </table>
            </form>


    </div>
</div>
</asp:Content>
