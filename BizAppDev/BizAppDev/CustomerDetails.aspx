<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="BizAppDev.CustomerDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style type="text/css">
        body{
            max-width: max-content;
        }

        .button-54 {
          font-family: "Open Sans", sans-serif;
          font-size: 16px;
          letter-spacing: 2px;
          text-decoration: none;
          text-transform: uppercase;
          color: #000;
          cursor: pointer;
          border: 3px solid;
          padding: 0.25em 0.5em;
          box-shadow: 1px 1px 0px 0px, 2px 2px 0px 0px, 3px 3px 0px 0px, 4px 4px 0px 0px, 5px 5px 0px 0px;
          position: relative;
          user-select: none;
          -webkit-user-select: none;
          touch-action: manipulation;
        }

        .button-54:active {
          box-shadow: 0px 0px 0px 0px;
          top: 5px;
          left: 5px;
        }

        @media (min-width: 768px) {
            .button-54 {
                padding: 0.25em 0.75em;
            }
        }
        #Details {
            float:right;
            margin-top:50px;
        }
        .tableHeader{
        }
    </style>

    <br/>
    <div id="Details">
    <h1 class ="tableHeader"><strong>Account Details</strong></h1>
    <table class="auto-style1">
        <tr >
            <td class="auto-style4">Username:</td>
            <td class="auto-style5">
                <asp:Label ID="lbl_Username" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Name:</td>
            <td>
                <asp:Label ID="lbl_Name" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Email:</td>
            <td class="auto-style5">
                <asp:Label ID="lbl_Email" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Phone Number:</td>
            <td>
                <asp:Label ID="lbl_PhoneNo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Gender:</td>
            <td>
                <asp:Label ID="lbl_Gender" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Date of birth:</td>
            <td>
                <asp:Label ID="lbl_DOB" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Address:</td>
            <td>
                <asp:Label ID="lbl_Address" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:Button ID="btn_Edit" runat="server" ForeColor="Black" Text="Edit" CssClass="button-54" OnClick="btn_Edit_Click" />
    <asp:Button ID="btn_Delete" runat="server" Text="Delete" CssClass="button-54" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Points" CssClass="button-54" />
        </div>
</asp:Content>
