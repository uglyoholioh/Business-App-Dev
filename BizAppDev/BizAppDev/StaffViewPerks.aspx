<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="StaffViewPerks.aspx.cs" Inherits="BizAppDev.StaffViewPerks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <br />
    <asp:DataList ID="dl_Perks" runat="server" OnSelectedIndexChanged="dl_Perks_SelectedIndexChanged" DataSourceID="PerkDatasource" OnCancelCommand="dl_Perks_CancelCommand" OnDeleteCommand="dl_Perks_DeleteCommand" OnEditCommand="dl_Perks_EditCommand" RepeatColumns="5" RepeatDirection="Horizontal" OnUpdateCommand="dl_Perks_UpdateCommand" CellPadding="20">
        <EditItemTemplate>
            <strong>Perk ID:</strong>
            <asp:Label ID="lbl_PerkID" runat="server" Text='<%# Eval("PerkID") %>'></asp:Label>
            <br />
            Name:
            <asp:TextBox ID="tb_NewName" runat="server"></asp:TextBox>
            <br />
            <br />
            Description:&nbsp;
            <asp:TextBox ID="tb_NewPDesc" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_Update" runat="server" CommandName="update" CssClass="btn-success" Text="Update" />
            <asp:Button ID="btn_Cancel" runat="server" CommandName="cancel" CssClass="btn-danger focus" Text="Cancel" />
        </EditItemTemplate>
        <ItemTemplate>
            Perk ID:<asp:Label ID="lbl_PerkID" runat="server" Text='<%# Eval("PerkID") %>'></asp:Label>
            <br />
            <br />
            Perk Name: <asp:Label ID="lbl_Name" runat="server" Text='<%# Eval("Name") %>' style="margin-bottom: 0px"></asp:Label>
            <br />
            <br />
            Perk Description: <asp:Label ID="lbl_PDesc" runat="server" Text='<%# Eval("PDesc") %>'></asp:Label>
            <br />
            <br />
            <asp:Button ID="btn_Edit" runat="server" CommandArgument='<%# Eval("PerkID") %>' CommandName="edit" CssClass="btn btn-dark" Text="Edit" />
            <asp:Button ID="btn_Delete" runat="server" CommandArgument='<%# Eval("PerkID") %>' CommandName="delete" CssClass="btn btn-danger" OnClientClick="return confirm('Are you sure you want to delete this Perk?')" Text="Delete" />
        </ItemTemplate>
    </asp:DataList>
        <asp:SqlDataSource ID="PerkDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Perks]"></asp:SqlDataSource>
    </form>
</asp:Content>
