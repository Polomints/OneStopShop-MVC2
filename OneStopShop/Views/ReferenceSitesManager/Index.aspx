<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<OneStopShop.Models.ReferenceSitesMaster>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Reference Sites</h2>
    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>
    <table>
        <tr>
            <th></th>
            <th>
                Id
            </th>
            <th>
                Category
            </th>
            <th>
                Name
            </th>
            <th>
                URL
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.ReferenceSitesId }) %> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.ReferenceSitesId })%>
            </td>
            <td>
                <%: item.ReferenceSitesId %>
            </td>
            <td>
                <%: item.CategoryMaster.Name %>
            </td>
            <td>
                <%: item.Name %>
            </td>
            <td>
                <%: item.URL %>
            </td>
        </tr>
    
    <% } %>

    </table>

    

</asp:Content>

