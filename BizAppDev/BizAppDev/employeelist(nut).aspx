<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="employeelist(nut).aspx.cs" Inherits="BizAppDev.employeelist_nut_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Employee List</h2>
        </div>
    </header>
    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item">Employee management</li>
            <li class="breadcrumb-item active"><a href="AcceptedOrder.aspx">Employee List</a></li>
        </ul>
    </div>
              
    <br />  
    <div style="align-items:flex-start;">
               <a href="Addemployee.aspx" class="btn btn-primary" style="color: white; margin-left:75px;"><i class="fa fa-plus"></i>Add</a><form runat="server">
         <asp:TextBox ID="tb_SearchEmp"  style="margin-left: 1200px;" runat="server"></asp:TextBox>
                     <asp:Button ID="BtnSearch"  class="btn btn-primary btn-sm" runat="server" Text="Search" OnClick="BtnSearch_Click" />
               </div>
&nbsp;
          <br />
          <br />
            <div class="container-fluid" id="div_Membership">
              <div class="row" style="margin-left:20px; ">
                <div class="col-md-6 col-lg-3" >

                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"  DataKeyField="EmpID" style="width:1500px; margin-left:20px; margin-bottom:50px;" OnDeleteCommand="DataList1_DeleteCommand" OnEditCommand="DataList1_EditCommand">
                      
                        <ItemTemplate>
                            <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center"><img class="avatar avatar-lg" src="https://medias.spotern.com/spots/w640/95/95891-1532336916.jpg" title="..." style="width: 130px; margin-right:10px; height: 100px">
                             <div class="ms-3">
                                 
                                    Emp ID:
                            <asp:Label ID="lbl_EmpID" runat="server" Text='<%# Eval("EmpID") %>' />
                            <br />
                           
                            Emp Name:
                            <asp:Label ID="lbl_EmpName" runat="server" Text='<%# Eval("EmpName") %>' />
                            <br />
                            <br />
                            <asp:Button ID="btn_details" class="btn btn-primary btn-sm" runat="server" Text="Details" CommandName ="edit"/>
                            <asp:Button ID="btn_delete" class="btn btn-primary btn-sm" runat="server" Text="Delete" CommandName ="Delete" OnClientClick="if (!confirm('Would you like to delete?')) return false;"/>
                            <br />
                           </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                   
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>

    </form>
    </div>
    </div>
    </div>
</asp:Content>