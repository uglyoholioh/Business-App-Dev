<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerPoints.aspx.cs" Inherits="BizAppDev.CustomerPoints" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 69px;
        }
        .auto-style3 {
            width: 69px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><strong>Your Points</strong><br />
    </h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Points:</td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
