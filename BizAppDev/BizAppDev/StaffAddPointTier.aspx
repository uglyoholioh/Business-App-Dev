<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="StaffAddPointTier.aspx.cs" Inherits="BizAppDev.StaffAddPointTier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    </form>
    <div class="card-body">
                      <p class="text-sm">Create points tier</p>
                      <form>
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

                        <button class="btn btn-primary" type="submit">Submit</button>
                      </form>
                    </div>
</asp:Content>
