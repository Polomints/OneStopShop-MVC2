<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<OneStopShop.ViewModels.CategoryIndexViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Browse Categories</h3>
    <p>Select from <%: Model.NumberOfCategories %> categories:</p>
    <ul> <% foreach (string categoryName in Model.Categories)
            { %>
        <li> 
            <%: Html.ActionLink(categoryName, "Browse", new { Category = categoryName })%>
        </li> 
        <% } %>
    </ul>

</asp:Content>
