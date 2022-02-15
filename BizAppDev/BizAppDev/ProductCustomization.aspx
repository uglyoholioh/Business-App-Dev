<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="ProductCustomization.aspx.cs" Inherits="BizAppDev.ProductCustomization" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- Choices CSS-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/admin-premium/2-0/vendor/choices.js/public/assets/styles/choices.min.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/admin-premium/2-0/css/style.default.premium.2a30c8f8.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/admin-premium/2-0/css/custom.0a822280.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="https://d19m59y37dris4.cloudfront.net/admin-premium/2-0/img/favicon.3903ee9d.ico">
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"
   <script src="http://code.jquery.com/jquery-1.8.2.js"> </script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
        }
        .auto-style3 {
            width: 283px;
        }
        .auto-style4 {
            width: 200px;
            height: 33px;
        }
        .auto-style5 {
            width: 283px;
            height: 33px;
        }
        .auto-style6 {
            height: 33px;
        }
    </style>
    <h2>Product Customization</h2>
    <p><b>For colour and Scent option, leave default for normal</b></p>
    <table class="auto-style1">
        
        <tr>
            <td class="auto-style2">Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tb_name" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_name" ErrorMessage="Please enter your name" ForeColor="Red" ValidationGroup="cfmbtn"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tb_email" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_email" ErrorMessage="Please enter your email" ForeColor="Red" ValidationGroup="cfmbtn"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Contact No:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tb_contact" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_contact" ErrorMessage="Please enter your contact no" ForeColor="Red" ValidationGroup="cfmbtn"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Product Category:</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddl_prodcat" runat="server" Width="200px">
                    <asp:ListItem Value="0" Text="Select a Category"></asp:ListItem>
                    <asp:ListItem Value="1" Text="Joss Paper"></asp:ListItem>
                    <asp:ListItem Value="2" Text="Incense Stick"></asp:ListItem>
                    <asp:ListItem Value="3" Text="Candle"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="rfvprodcat" runat="server" ControlToValidate="ddl_prodcat" ErrorMessage="Please select a category option" ForeColor="Red" InitialValue="0" ValidationGroup="cfmbtn"></asp:RequiredFieldValidator>
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
            <td class="auto-style2">Collection Date:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tb_date" runat="server" Width="200px"></asp:TextBox>
                <asp:ImageButton ID="calImg" runat="server" ImageUrl="~/CalenderImg/calendar-image-icon-9.jpg" ImageAlign="AbsBottom" width="32px" OnClick="calImg_Click" Height="33px"/>
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender"></asp:Calendar>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_date" ErrorMessage="Please select a collection date" ForeColor="Red" ValidationGroup="cfmbtn"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <br />
                <asp:Button ID="confirmBtn" runat="server" Text="Confirm" Width="125px" OnClick="confirmBtn_Click" ValidationGroup="cfmbtn" />
            </td>
            <td>
                <asp:ValidationSummary ID="vsprodcust" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="cfmbtn" />
            </td>
        </tr>
        </table>
</asp:Content>
