<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="StaffAddPointTier.aspx.cs" Inherits="BizAppDev.StaffAddPointTier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    </form>
    <div class="card-body">
                      <p class="text-sm">Create points tier</p>
                      <form>
                        <div class="mb-3">
                          <label class="form-label">Tier Name</label>
                            <asp:TextBox ID="tb_Name" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                          <label class="form-label">Tier Description</label>
                            <asp:TextBox ID="tb_desc" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                          <label class="form-label">Point expenditure requirement to reach tier</label>

                          <input class="form-control">

                            <asp:TextBox ID="tb_price" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                                                    <div class="mb-3">
                                  <label class="form-label">Perks to be included</label>
                                                        <br />
                                                        <asp:CheckBoxList ID="cbl_Perks" runat="server" DataSourceID="checkboxDatasource" DataTextField="PerkID" DataValueField="PerkID">
                                                        </asp:CheckBoxList>
                                                        <asp:SqlDataSource ID="checkboxDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT [PerkID] FROM [Perks]"></asp:SqlDataSource>
                                                        <asp:Label ID="lbl_PerkList" runat="server" CssClass="form-control"></asp:Label>
                                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                          <asp:DataList ID="DataList1" runat="server" DataKeyField="PerkID" DataSourceID="staffPerkadd" RepeatColumns="4" RepeatDirection="Horizontal" CellPadding="20" CellSpacing="-1" Width="1371px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand1">
                              <ItemTemplate>
                      <div style="box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;" class="card-body">
                      <h4 class="card-title"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' /></h4>
                      <p class="card-text"><asp:Label ID="Label1" runat="server" Text='<%# Eval("Desc") %>' Height="19px" /></p>ID:
                                  <asp:Label ID="lbl_PerkID" runat="server" Height="19px" Text='<%# Eval("PerkID") %>' />
                                              </div>

                                  </div>


                        </div>

                        <button class="btn btn-primary" type="submit">Submit</button>
=======



<br />
                              </ItemTemplate>
        </asp:DataList>
                                                        <asp:Button ID="btn_Submit" runat="server" CssClass="btn btn-primary" OnClick="btn_Submit_Click" Text="Submit" />
                      <asp:SqlDataSource ID="staffPerkadd" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [Perks]"></asp:SqlDataSource>
                                <button class="btn btn-primary" type="submit">Submit</button>

    </form>
>>>>>>> Stashed changes
                      </form>
                    </div>
</asp:Content>
