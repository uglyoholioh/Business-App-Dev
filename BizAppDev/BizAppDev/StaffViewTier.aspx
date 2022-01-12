<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="StaffViewTier.aspx.cs" Inherits="BizAppDev.StaffViewTier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="pointTierID" DataSourceID="ViewTiers" CellPadding="20" RepeatDirection="Horizontal" CellSpacing="20" RepeatColumns="5" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnCancelCommand="DataList1_CancelCommand" OnUpdateCommand="DataList1_UpdateCommand" OnEditCommand="DataList1_EditCommand">
        <EditItemTemplate>
            <div class="card" style="width:240px;">
                <div class="card-header">
                    ID:
                    <asp:Label ID="pointTierIDLabel" runat="server" Text='<%# Eval("pointTierID") %>' />
                </div>
                <div class="card-body">
                    <h4 class="card-title">

                        <asp:Label ID="lbl_Name" runat="server" Text='<%# Eval("name") %>' />
                        <br />
                                                  <label class="form-label">Name</label>
                        <asp:TextBox ID="tb_Name" runat="server" CssClass="form-control"></asp:TextBox>
                                                <br />                          <label class="form-label">Description</label>

                        <asp:TextBox ID="tb_Desc" runat="server" CssClass="form-control"></asp:TextBox>
                                                <br />
                                                  <label class="form-label">Price</label>

                        <asp:TextBox ID="tb_Price" runat="server" CssClass="form-control"></asp:TextBox>
                                                <br />

                    </h4>
                    <p class="card-text">
                        <asp:Label ID="lbl_Desc" runat="server" Text='<%# Eval("desc") %>' />
                        <asp:Label ID="lbl_Price" runat="server" Text='<%# Eval("desc") %>' />
                        <br />
                        <asp:Button ID="btn_Update" runat="server" CommandArgument='<%# Eval("pointTierID") %>' CommandName="update" CssClass="btn btn-dark" Text="Update" />
                        <asp:Button ID="btn_Delete" runat="server" CommandArgument='<%# Eval("pointTierID") %>' CommandName="cancel" CssClass="btn btn-danger" OnClientClick="return confirm('Are you sure you want to delete this Tier?')" Text="Cancel" />
                    </p>
                    <br />
                </div>
            </div>
        </EditItemTemplate>
        <ItemTemplate>
                        <div class="card" style="width:240px;">
            <div class="card-header">ID: <asp:Label ID="pointTierIDLabel" runat="server" Text='<%# Eval("pointTierID") %>' /></div>
            <div class="card-body">
                <h4 class="card-title"><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br /></h4>
                <p class="card-text"><asp:Label ID="descLabel" runat="server" Text='<%# Eval("desc") %>' />
                      <br />
                    <asp:Button ID="btn_Edit" runat="server" Text="Edit" CssClass="btn btn-dark" CommandArgument='<%# Eval("pointTierID") %>' CommandName="edit" />
                    <asp:Button ID="btn_Delete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClientClick="return confirm('Are you sure you want to delete this Tier?')" CommandName="deleteTier" CommandArgument='<%# Eval("pointTierID") %>'/>

          </p>
<br />
                            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="ViewTiers" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [PointTiers]"></asp:SqlDataSource>
          
</form>

</asp:Content>
