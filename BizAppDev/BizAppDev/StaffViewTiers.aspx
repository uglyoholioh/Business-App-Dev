<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="StaffViewTiers.aspx.cs" Inherits="BizAppDev.StaffViewTiers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames ="pointTierID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
            <Columns>
                <asp:BoundField DataField="pointTierID" HeaderText="Tier ID" />
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="descr" HeaderText="Description" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" SelectText="View perks" />
            </Columns>
        </asp:GridView>
    </form>
</asp:Content>
