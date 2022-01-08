<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerEditDetails.aspx.cs" Inherits="BizAppDev.CustomerEditDetails1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 264px;
        }
        .auto-style3 {
            width: 264px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
        #editdetails {
                      margin-left:300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="editdetails">
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
            <td class="auto-style2">First name:</td>
            <td>
                <asp:TextBox ID="tb_FirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Last name:</td>
            <td>
                <asp:TextBox ID="tb_LastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email:</td>
            <td>
                <asp:TextBox ID="tb_Email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Phone number:</td>
            <td class="auto-style4">
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
                <asp:Button ID="btn_Save" runat="server" Text="Save" OnClick="btn_Save_Click" />
            </td>
            <td>
                <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" OnClick="btn_Cancel_Click" />
            </td>
        </tr>
    </table>
        </div>
</asp:Content>
