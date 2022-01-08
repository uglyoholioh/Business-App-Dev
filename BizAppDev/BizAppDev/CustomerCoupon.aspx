<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerCoupon.aspx.cs" Inherits="BizAppDev.CustomerCoupon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-weight: 600;
        }
        .auto-style3 {
            width: 220px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <br />
        C<span class="auto-style2">oupon redemption</span></h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Enter coupon redemption code:</td>
            <td>
                <asp:TextBox ID="tb_Code" runat="server"></asp:TextBox>
                <asp:Button ID="btn_Submit" runat="server" OnClick="btn_Submit_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
