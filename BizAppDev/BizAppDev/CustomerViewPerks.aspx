<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerViewPerks.aspx.cs" Inherits="BizAppDev.CustomerViewPerks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>

    <h1><strong>Your Perks</strong></h1>
    <table class="auto-style1">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="PerkID" DataSourceID="PerkSQL">
                    <ItemTemplate>
                        Perk Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />
                        Desc:
                        <asp:Label ID="DescLabel" runat="server" Text='<%# Eval("Desc") %>' />
                        <br />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="PerkSQL" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Perks] WHERE ([pointTierID] = @pointTierID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="pointTierID" QueryStringField="pointTierID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
