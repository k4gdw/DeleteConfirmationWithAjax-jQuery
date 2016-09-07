<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <h2><%: ViewBag.Message %></h2>
    <p>
        Delete confirmation with Ajax & jQuery UI Dialog. 
    </p>
    <%= Html.ActionLink("View Cars", "Index", "Cars") %>
</asp:Content>
