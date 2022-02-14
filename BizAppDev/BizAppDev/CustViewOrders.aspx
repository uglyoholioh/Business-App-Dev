<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="CustViewOrders.aspx.cs" Inherits="BizAppDev.CustViewOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="serialno" DataSourceID="ParentDS" ForeColor="#333333" GridLines="None" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="orderid" SortExpression="orderid" />
            <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
            <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="deliveryoption" HeaderText="deliveryoption" SortExpression="deliveryoption" />
            <asp:BoundField DataField="deliverydate" HeaderText="deliverydate" SortExpression="deliverydate" />
            <asp:BoundField DataField="grandtotal" HeaderText="grandtotal" SortExpression="grandtotal" />
            <asp:BoundField DataField="discountedtotal" HeaderText="discountedtotal" SortExpression="discountedtotal" />
            <asp:BoundField DataField="OrderStatus" HeaderText="OrderStatus" SortExpression="OrderStatus" />
            <asp:BoundField DataField="serialno" HeaderText="serialno" InsertVisible="False" ReadOnly="True" SortExpression="serialno" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="ParentDS" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [orderdetails] WHERE ([Cust_ID] = @Cust_ID) ORDER BY [orderid] DESC">
        <SelectParameters>
            <asp:SessionParameter Name="Cust_ID" SessionField="CustID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
