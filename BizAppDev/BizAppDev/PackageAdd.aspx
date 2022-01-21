<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="PackageAdd.aspx.cs" Inherits="BizAppDev.PackageAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<form id="form1" runat="server">
    <header class="bg-white shadow-sm px-4 py-3 z-index-20">
            <div class="container-fluid px-0" width="1000px">
              <h2 class="mb-0 p-1" style="text-align:center;">Add Package</h2>
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
              <div class="row" style="margin-left:10px;width:1000px;">
                <div class="col-md-6 col-lg-3" style="margin-left:100px;width:1000px;">

                    <table class="w-100" style="margin-left:100px; width:600px;">
                        <tr>
                            <td style="width: 238px">Package Name:</td>
                            <td>
                                <asp:TextBox ID="tb_name" runat="server" Width="207px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 238px">Package Items:</td>
                            <td>
                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="prodName" DataValueField="prodName">
                                </asp:CheckBoxList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CouponsDBContext %>" SelectCommand="SELECT [Product_Name] FROM [Products]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 238px">Package Descriptions:</td>
                            <td>
                                <asp:TextBox ID="tb_desc" runat="server" Height="91px" TextMode="MultiLine" Width="299px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 238px">Package Price:</td>
                            <td>
                                <asp:TextBox ID="tb_price" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 238px">Package Image: </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 238px">&nbsp;</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 238px">&nbsp;</td>
                            <td>
                                <asp:Button ID="btn_insert" runat="server" OnClick="btn_insert_Click" Text="Insert" />
&nbsp;<asp:Button ID="btn_view" runat="server" Text="View Package" />
                            </td>
                        </tr>
                    </table>
                    </div>
                  </div>
                </div>
                        </section>
    </form>
</asp:Content>
