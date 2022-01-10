<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="StaffAddPointTier.aspx.cs" Inherits="BizAppDev.StaffAddPointTier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</asp:Content>
