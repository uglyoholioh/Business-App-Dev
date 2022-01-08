<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerEditDetails.aspx.cs" Inherits="BizAppDev.CustomerEditDetails1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><strong>Edit Details</strong><br />
    </h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Username:</td>
            <td>
                <asp:TextBox ID="tb_Username" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Name:</td>
            <td>
                <asp:TextBox ID="tb_Name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email:</td>
            <td>
                <asp:TextBox ID="tb_Email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Phone number:</td>
            <td>
                <asp:TextBox ID="tb_PhoneNo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Gender:</td>
            <td>
                <asp:TextBox ID="tb_Gender" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Date of birth:</td>
            <td>
                <asp:TextBox ID="tb_DOB" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Address:</td>
            <td>
                <asp:TextBox ID="tb_Address" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="btn_Save" runat="server" Text="Button" />
            </td>
            <td>
                <asp:Button ID="btn_Cancel" runat="server" Text="Button" />
            </td>
        </tr>
    </table>
</asp:Content>
