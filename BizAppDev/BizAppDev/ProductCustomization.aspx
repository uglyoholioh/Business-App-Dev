<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="ProductCustomization.aspx.cs" Inherits="BizAppDev.ProductCustomization" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
     <h1>Product Customization</h1>
    <p><b>For colour and Scent option, leave default for normal</b></p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Product Category:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddl_prodcat" runat="server" Width="200px">
                    <asp:ListItem Value="0" Text="Select a Category"></asp:ListItem>
                    <asp:ListItem Value="1" Text="Joss Paper"></asp:ListItem>
                    <asp:ListItem Value="2" Text="Incense Stick"></asp:ListItem>
                    <asp:ListItem Value="3" Text="Candle"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvprodcat" runat="server" ControlToValidate="ddl_prodcat" ErrorMessage="Please select a category option" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Primary Colour:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddl_prodcol" runat="server" Width="200px">
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
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Scent:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddl_scent" runat="server" Width="200px">
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
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <br />
                <asp:Button ID="confirmBtn" runat="server" Text="Confirm" Width="125px" OnClick="confirmBtn_Click" />
            </td>
            <td>
                <asp:ValidationSummary ID="vsprodcust" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
        </table>

</asp:Content>