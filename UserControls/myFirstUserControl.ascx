<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="myFirstUserControl.ascx.cs" Inherits="CrudInWebForm.UserControls.myFirstUserControl" %>


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
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>

