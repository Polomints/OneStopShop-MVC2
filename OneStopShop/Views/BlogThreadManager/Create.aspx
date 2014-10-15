<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<OneStopShop.ViewModels.BlogThreadManagerViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create Blog Thread
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create Blog Thread</h2>

    <% Html.EnableClientValidation(); %>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Blog Thread</legend>

            <%: Html.EditorFor(model => model.BlogThread)%>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>



</asp:Content>

