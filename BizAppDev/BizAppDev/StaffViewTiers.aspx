<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="StaffViewTiers.aspx.cs" Inherits="BizAppDev.StaffViewTiers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <Columns>
                <asp:BoundField DataField="pointTierID" HeaderText="Tier ID" />
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="descr" HeaderText="Description" />
            </Columns>
        </asp:GridView>
    </form>
</asp:Content>
