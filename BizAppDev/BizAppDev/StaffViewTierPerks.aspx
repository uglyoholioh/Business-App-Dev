<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="StaffViewTierPerks.aspx.cs" Inherits="BizAppDev.StaffViewTierPerks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="PerkID" DataSourceID="perksql">
            <ItemTemplate>
                PerkID:
                <asp:Label ID="PerkIDLabel" runat="server" Text='<%# Eval("PerkID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                PDesc:
                <asp:Label ID="PDescLabel" runat="server" Text='<%# Eval("PDesc") %>' />
                <br />
                pointTierID:
                <asp:Label ID="pointTierIDLabel" runat="server" Text='<%# Eval("pointTierID") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="perksql" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT Perks.PerkID, Perks.Name, Perks.PDesc, PointTiersPerks.pointTierID FROM PointTiersPerks INNER JOIN Perks ON PointTiersPerks.PerkID = Perks.PerkID WHERE (PointTiersPerks.pointTierID = @pointTierID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="pointTierID" QueryStringField="pointTierID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
