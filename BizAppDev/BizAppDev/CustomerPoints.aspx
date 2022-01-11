<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerPoints.aspx.cs" Inherits="BizAppDev.CustomerPoints" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 150px;
        }
        .auto-style3 {
            width: 150px;
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
                <asp:Label ID="lbl_Points" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">Available coupons</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="pointTierID" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <ItemTemplate>
                        pointTierID:
                        <asp:Label ID="pointTierIDLabel" runat="server" Text='<%# Eval("pointTierID") %>' />
                        <br />
                        name:
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        <br />
                        desc:
                        <asp:Label ID="descLabel" runat="server" Text='<%# Eval("desc") %>' />
                        <br />
                        price:
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        benefits:
                        <asp:Label ID="benefitsLabel" runat="server" Text='<%# Eval("benefits") %>' />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [PointTiers] WHERE ([pointTierID] = @pointTierID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="pointTierID" QueryStringField="pointTierID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
