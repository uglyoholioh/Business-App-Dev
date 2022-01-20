<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="AcceptedOrder.aspx.cs" Inherits="BizAppDev.AcceptedOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Order details</h2>
        </div>
    </header>
    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item">Customer management</li>
            <li class="breadcrumb-item active"><a href="#">Order status</a></li>
        </ul>
    </div>
     <form id="form1" runat="server">
                  
         <asp:GridView ID="GvOrder" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" OnRowEditing="GvOrder_RowEditing1" OnRowDeleting="GvOrder_RowDeleting">
             <Columns>
                 <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />          
                 <asp:BoundField DataField="deliverydate" HeaderText="OrderDate" SortExpression="OrderDate" />
                 <asp:BoundField DataField="OrderStatus" HeaderText="OrderStatus" SortExpression="OrderStatus" />
                 <asp:CommandField ShowDeleteButton="True" DeleteText="Reject" EditText="Accept" ShowEditButton="True" />
             </Columns>
         </asp:GridView>                 
        </form>
</asp:Content>
