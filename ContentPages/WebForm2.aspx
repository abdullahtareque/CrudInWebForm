<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="CrudInWebForm.ContentPages.WebForm2" %>

<%@ Register Src="~/UserControls/myFirstUserControl.ascx" TagPrefix="uc1" TagName="myFirstUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:myFirstUserControl runat="server" ID="myFirstUserControl" />
</asp:Content>
