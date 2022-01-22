<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="ProductCustView.aspx.cs" Inherits="BizAppDev.ProductCustView" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvProdCust" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomizationID" OnRowCancelingEdit="gvProdCust_RowCancelingEdit" OnRowDeleting="gvProdCust_RowDeleting" OnRowEditing="gvProdCust_RowEditing" OnRowUpdating="gvProdCust_RowUpdating" Width="939px">
        <Columns>
            <asp:BoundField DataField="CustomizationID" HeaderText="Customization Reference ID" ReadOnly="True" />
            <asp:TemplateField HeaderText="Product Category">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddl_catview" runat="server" Width="170px" >
                        <asp:ListItem Value="0" Text="Select a Category"></asp:ListItem>
                        <asp:ListItem Value="1" Text="Joss Paper"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Incense Stick"></asp:ListItem>
                        <asp:ListItem Value="3" Text="Candle"></asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Colour">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddl_colview" runat="server" Width="170px">
                        <asp:ListItem Value="0" Text="Default"></asp:ListItem>
                        <asp:ListItem Value="1" Text="Red"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Orange"></asp:ListItem>
                        <asp:ListItem Value="3" Text="Yellow"></asp:ListItem>
                        <asp:ListItem Value="4" Text="Green"></asp:ListItem>
                        <asp:ListItem Value="5" Text="Cyan"></asp:ListItem>
                        <asp:ListItem Value="6" Text="Azure"></asp:ListItem>
                        <asp:ListItem Value="7" Text="Blue"></asp:ListItem>
                        <asp:ListItem Value="8" Text="Violet"></asp:ListItem>
                        <asp:ListItem Value="9" Text="Magenta"></asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Colour") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Scent">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddl_stview" runat="server" Width="170px">
                        <asp:ListItem Value="0" Text="Default"></asp:ListItem>
                        <asp:ListItem Value="1" Text="Floral"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Citrus"></asp:ListItem>
                        <asp:ListItem Value="3" Text="Woody"></asp:ListItem>
                        <asp:ListItem Value="4" Text="Oriental"></asp:ListItem>
                        <asp:ListItem Value="5" Text="Fruity"></asp:ListItem>
                        <asp:ListItem Value="6" Text="Green"></asp:ListItem>
                        <asp:ListItem Value="7" Text="Oceanic"></asp:ListItem>
                        <asp:ListItem Value="8" Text="Spicy"></asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Scent") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

