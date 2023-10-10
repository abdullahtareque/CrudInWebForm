<%@ Page Title="Page-02" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page_2.aspx.cs" Inherits="CrudInWebForm.ContentPages.Page_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Page No.-02</h2>
    <p>&nbsp;</p>
    <table class="w-100">
        <tr>
            <td class="text-center" colspan="3"><strong><span style="text-align: center; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: x-large; background-color: #FFCC66">Trainee Information</span></strong></td>
        </tr>
        <tr>
            <td style="width: 101px">Name</td>
            <td style="width: 194px">
                <asp:TextBox ID="txtBoxName" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBoxName" ErrorMessage="Name is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 101px">Email Address</td>
            <td style="width: 194px">
                <asp:TextBox ID="txtBoxEmail" runat="server" Width="175px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBoxEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBoxEmail" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 101px">Gender</td>
            <td style="width: 194px">
                <asp:DropDownList ID="ddlGender" runat="server" Height="20px" Width="179px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 101px">DOB</td>
            <td style="width: 194px">
                <asp:TextBox ID="txtBoxDOB" runat="server" Width="171px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBoxDOB" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 194px">
                <asp:CheckBox ID="chkBoxAgree" runat="server" Text="Yes, I am Agree" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 194px">&nbsp;</td>
            <td>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 194px">
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="TraineeID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="TraineeID" HeaderText="TraineeID" InsertVisible="False" ReadOnly="True" SortExpression="TraineeID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" DeleteCommand="DELETE FROM [Trainee] WHERE [TraineeID] = @TraineeID" InsertCommand="INSERT INTO [Trainee] ([Name], [Email], [Gender], [Dob]) VALUES (@Name, @Email, @Gender, @Dob)" SelectCommand="SELECT * FROM [Trainee]" UpdateCommand="UPDATE [Trainee] SET [Name] = @Name, [Email] = @Email, [Gender] = @Gender, [Dob] = @Dob WHERE [TraineeID] = @TraineeID">
        <DeleteParameters>
            <asp:Parameter Name="TraineeID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter DbType="Date" Name="Dob" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter DbType="Date" Name="Dob" />
            <asp:Parameter Name="TraineeID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />



</asp:Content>
