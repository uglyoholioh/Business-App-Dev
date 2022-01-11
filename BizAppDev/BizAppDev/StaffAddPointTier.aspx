<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="StaffAddPointTier.aspx.cs" Inherits="BizAppDev.StaffAddPointTier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <div class="card-body">
                      <p class="text-sm">Create points tier</p>
                        <div class="mb-3">
                          <label class="form-label">Tier Name</label>
                          <input class="form-control" id="exampleInputEmail1">
                        </div>
                        <div class="mb-3">
                          <label class="form-label">Tier Description</label>
                          <input class="form-control">
                        </div>
                        <div class="mb-3">
                          <label class="form-label">Point expenditure requirement to reach tier</label>
                          <input class="form-control">
                            </div>

                                                    <div class="mb-3">
                                  <label class="form-label">Perks to be included</label>
                                                        <br />
                                                        <asp:Label ID="lbl_Check" runat="server" Text="Label"></asp:Label>
                                                        <asp:Label ID="lbl_PerkList" runat="server" CssClass="form-control"></asp:Label>
                          <asp:DataList ID="DataList1" runat="server" DataKeyField="PerkID" DataSourceID="staffPerkadd" RepeatColumns="4" RepeatDirection="Horizontal" CellPadding="20" CellSpacing="-1" Width="1371px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand1">
                              <ItemTemplate>
                      <div style="box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;" class="card-body">
                      <h4 class="card-title"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' /></h4>
                      <p class="card-text"><asp:Label ID="Label1" runat="server" Text='<%# Eval("Desc") %>' /></p>
                          <asp:Button ID="btn_Add" runat="server" Text="Add" CssClass="btn btn-primary" CommandName="AddPerk" CommandArgument ='<%# Eval("perkID") %>'/>
                    </div>
                                  </div>


                        </div>
                  </div>
                  </div>





<br />
                              </ItemTemplate>
        </asp:DataList>
                      <asp:SqlDataSource ID="staffPerkadd" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Perks]"></asp:SqlDataSource>
                                <button class="btn btn-primary" type="submit">Submit</button>

    </form>
                      </form>
                    </div>
</asp:Content>
