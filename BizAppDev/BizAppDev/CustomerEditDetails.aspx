<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustomerEditDetails.aspx.cs" Inherits="BizAppDev.CustomerEditDetails1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 264px;
        }
        .auto-style3 {
            width: 264px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
        #editdetails {
                      margin-left:300px;
        }
    </style>
    <div class="card">
                    <div class="card-body" style="width:1920px">
                      <h3 class="card-title">Your Profile</h3>
                      <div class="row gy-4">
                        <div class="col-sm-6 col-sm-6">
                          <label class="form-label">Username</label>               

                <asp:TextBox ID="tb_Username" runat="server" class="form-control" placeholder="Enter Username"></asp:TextBox>
                        </div>
                        <div class="col-sm-6 col-sm-6">
                          <label class="form-label">Email address</label>
                <asp:TextBox ID="tb_Email" runat="server" class="form-control" placeholder="Enter Email"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                          <label class="form-label">First Name</label>
                <asp:TextBox ID="tb_FirstName" runat="server" class="form-control" placeholder="Enter First Name"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                          <label class="form-label">Last name</label>
                <asp:TextBox ID="tb_LastName" runat="server" class="form-control" placeholder="Enter Last Name"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                          <label class="form-label">Address</label>
                <asp:TextBox ID="tb_Address" runat="server" class="form-control" placeholder="Enter Address"></asp:TextBox>
                        </div>
                                                  <div class="col-md-6">
                          <label class="form-label">Date of Birth</label><asp:Calendar ID="cal_DOB" runat="server"></asp:Calendar>
                        </div>
                        <div class="col-sm-6 col-md-4">
                          <label class="form-label">Phone number</label>
                <asp:TextBox ID="tb_PhoneNo" runat="server" class="form-control" placeholder="Enter Phone number"></asp:TextBox>
                        </div>
                        <div class="col-sm-6 col-md-3">
                          <label class="form-label">Gender</label><asp:RadioButtonList ID="rbl_Gender" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                <asp:TextBox ID="tb_Gender" runat="server" class="form-control" placeholder="Enter Gender"></asp:TextBox>
                        </div>

                        
                      </div></div>
                    <div class="card-footer text-end">
                        <asp:Button ID="btn_Save" OnClick="btn_Save_Click" class="btn btn-primary" runat="server" Text="Save Changes" />
                         <asp:Button ID="btn_Cancel" OnClick="btn_Cancel_Click" class="btn btn-primary" runat="server" Text="Cancel" />
                    </div>
                  </div>
    
</asp:Content>
