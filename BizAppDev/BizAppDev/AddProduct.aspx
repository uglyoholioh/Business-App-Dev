<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="BizAppDev.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<form id="form1" runat="server">
    <header class="bg-white shadow-sm px-4 py-3 z-index-20">
            <div class="container-fluid px-0">
              <h2 class="mb-0 p-1" style="text-align:center;">Add Product </h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="bg-white">
            <div class="container-fluid">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb mb-0 py-3" style="margin-left:30px;">
                  <li class="breadcrumb-item"><a class="fw-light" href="~/Products(lermin).aspx">Product List</a></li>
                  
                </ol>
                  
              </nav>
                
            </div>
          </div>
                    <section>
            <div class="container-fluid" id="div_Membership">
              <div class="row" style="margin-left:10px;">
                <div class="col-md-6 col-lg-3">

                    <table class="autoComplete_wrapper">
                        <tr>
                            <td>Product Name:</td>
                            <td>
                                <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Product Description:</td>
                            <td>
                                <asp:TextBox ID="tb_desc" runat="server" Height="118px" TextMode="MultiLine" Width="332px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Unit Price: </td>
                            <td>
                                <asp:TextBox ID="tb_price" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Product Image:</td>
                            <td>
                                <asp:FileUpload ID="fu_image" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>Stock Level:</td>
                            <td>
                                <asp:TextBox ID="tb_stock" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Supplier Name:</td>
                            <td>
                                <asp:TextBox ID="tb_supplname" runat="server" Width="297px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Supplier Email: </td>
                            <td>
                                <asp:TextBox ID="tb_supplemail" runat="server" TextMode="Email" Width="299px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="btn_edit" runat="server" OnClick="btn_edit_Click" Text="Insert" class="btn btn-primary" style="color: white; " />
&nbsp;<asp:Button ID="btn_view" runat="server" OnClick="btn_view_Click" Text="view product list" class="btn btn-primary" style="color: white; "/>
                            </td>
                        </tr>
                    </table>
</section>
    </form>
</asp:Content>
