<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<OneStopShop.Models.SubCategoryMaster>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>SubCategory</h2>
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
                PhotoURL
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td rowspan="2">
                <%: Html.ActionLink("Edit", "Edit", new { id=item.SubCategoryId }) %> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.SubCategoryId })%>
            </td>
            <td rowspan="2">
                <%: item.SubCategoryId %>
            </td>
            <td>
                <%: item.CategoryMaster.Name %>
            </td>
            <td>
                <%: item.Name %>
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



</asp:Content>

