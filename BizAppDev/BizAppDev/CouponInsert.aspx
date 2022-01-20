<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="CouponInsert.aspx.cs" Inherits="BizAppDev.CouponInsert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   
         <div class="card mb-0" style="margin-left:40px; height:800px;margin-left:150px;">
                    <div class="card-header">
                      <div class="card-close">
                        <div class="dropdown">
                          <button class="dropdown-toggle text-sm" type="button" id="closeCard1" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></button>
                          <div class="dropdown-menu dropdown-menu-end shadow-sm" aria-labelledby="closeCard1"><a class="dropdown-item py-1 px-3 remove" href="#"> <i class="fas fa-times"></i>Close</a><a class="dropdown-item py-1 px-3 edit" href="#"> <i class="fas fa-cog"></i>Edit</a></div>
                        </div>
                      </div>
                     <h1 class="h4 mb-0" style="margin-left:250px;margin-top:40px; margin-bottom:40px;">Insert Seasonal Coupon</h1>
                    </div>
   <div class="card-body" style="height:600px">
        <div class="breadcrumb-holder container-fluid" style="font-size:15px;">
        <ul class="breadcrumb">
            <li class="breadcrumb-item">Coupons List</li>
            <li class="breadcrumb-item active">Add Seasonal Coupon</li>
        </ul>
    </div>
        <form id="form1" runat="server">
        <table class="w-100" style="">
            <tr>
                <td>Coupon Name:</td>
                <td>
                    <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Coupon Start Date:</td>
                <td>
                    <asp:Calendar ID="calendar_startDate" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>Coupon End Date:</td>
                <td>
                    <asp:Calendar ID="calendar_endDate" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>Coupon Description:</td>
                <td>
                    <asp:TextBox ID="tb_desc" runat="server" Height="143px" Width="450px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Coupon Amount:</td>
                <td>
                    <asp:TextBox ID="tb_amt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btn_Insert" runat="server" Text="Insert" OnClick="btn_Insert_Click" class="btn btn-primary" style="color: white;"/>
                    <asp:Button ID="btn_view" runat="server" Text="View List" OnClick="btn_view_Click" class="btn btn-primary" style="color: white;"/>
                </td>
            </tr>
        </table>
            </form>
       </div>
             </div>
       
       
        
    
    </asp:Content>
    


