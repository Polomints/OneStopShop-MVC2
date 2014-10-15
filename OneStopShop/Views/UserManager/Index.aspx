<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<OneStopShop.Models.User>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>UserId</th>
            <th>UserName</th>
            <th>Password</th>
            <th>EmailId</th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.UserId }) %> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.UserId })%>
            </td>
            <td><%: item.UserId %></td>
            <td><%: item.UserName %></td>
            <td><%: item.Password %></td>
            <td><%: item.EmailId %></td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

