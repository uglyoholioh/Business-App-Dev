<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="Addemployee.aspx.cs" Inherits="BizAppDev.Addemployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Employee list</h2>
        </div>
    </header>
    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item">Employee management</li>
            <li class="breadcrumb-item active"><a href="#">Employee list</a></li>
        </ul>
    </div>

              <div class="row" style="margin-left:30px; ">
        
    <form runat="server">
    <p>
        Employee name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tb_EmpName" runat="server"></asp:TextBox>
    </p>
   
    <p>
        Employee NRIC:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tb_NRIC" runat="server"></asp:TextBox>
    </p>
        <p>
            Staff/Admin:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownPosition" runat="server">
                <asp:ListItem>Staff</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
            </asp:DropDownList>
    </p>
    Birthdate:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Calendar ID="cal_Birthdate" runat="server"></asp:Calendar>
    <br />
    <br />
    Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButtonList ID="rbl_Gender" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
    <br />
    Contact number:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_Contactno" runat="server"></asp:TextBox>
    <br />
    <br />
    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_Email" runat="server"></asp:TextBox>
    <br />
    <br />
    Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_Address" runat="server"></asp:TextBox>
    <br />
        <br />
        Default Password:&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_Password" runat="server" Text="Default@123"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btn_Add" runat="server" OnClick="Button1_Click" Text="Add" />
    <br />
    <br />
        </form>
                    </div>
</asp:Content>
