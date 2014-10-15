<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<OneStopShop.Models.CategoryMaster>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Category</h2>

    <table>
        <tr>
            <th></th>
            <th>
                Id
            </th>
            <th>
                Name
            </th>
            <th>
                No. of SubCatg
            </th>
            <th>
                PhotoURL
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td rowspan="2">
                <%: Html.ActionLink("Edit", "Edit", new { id=item.CategoryId }) %> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.CategoryId })%>
            </td>
            <td rowspan="2">
                <%: item.CategoryId %>
            </td>
            <td>
                <%: item.Name %>
            </td>
            <td>
                <%: item.SubCategoryMasters.Count() %>
            </td>
            <td>
                <%: item.PhotoURL %>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <b>Description:</b> <%: item.Description %>
            </td>    
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

