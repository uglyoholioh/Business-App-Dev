<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMain.Master" AutoEventWireup="true" CodeBehind="EduVideoInsert.aspx.cs" Inherits="BizAppDev.EduVideoInsert" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>Insert Educational Videos</h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Description:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tb_vidDesc" runat="server" Height="106px" Width="400px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv_vidDesc" runat="server" ControlToValidate="tb_vidDesc" ErrorMessage="Please enter a description" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Video:</td>
            <td class="auto-style3">
                <asp:FileUpload ID="eduVidUpload" runat="server" Width="400px" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv_Video" runat="server" ControlToValidate="eduVidUpload" ErrorMessage="Select a video file" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <br />
                <asp:Button ID="eduInsert" runat="server" OnClick="eduInsert_Click" Text="Insert Video" Width="150px" />
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <h2>All Videos</h2>
    <p>
        <asp:GridView ID="gv_eduVid" runat="server" AutoGenerateColumns="False" DataKeyNames="VidID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="VidID" HeaderText="VidID" InsertVisible="False" ReadOnly="True" SortExpression="VidID" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:TemplateField>
                <ItemTemplate>
                    <video height="250" width="300" controls>
                        <source src='<%#Eval("Path")%>' type="video/mp4"/>
                    </video>
                </ItemTemplate>
            </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT * FROM [EducationVideo]" DeleteCommand="DELETE FROM [EducationVideo] WHERE [VidID] = @VidID" InsertCommand="INSERT INTO [EducationVideo] ([Description], [Path]) VALUES (@Description, @Path)" UpdateCommand="UPDATE [EducationVideo] SET [Description] = @Description, [Path] = @Path WHERE [VidID] = @VidID">
            <DeleteParameters>
                <asp:Parameter Name="VidID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Path" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Path" Type="String" />
                <asp:Parameter Name="VidID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>
