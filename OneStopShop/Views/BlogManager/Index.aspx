﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<OneStopShop.Models.BlogMaster>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th>
                BlogId
            </th>
            <th>
                Category
            </th>
            <th>
                User
            </th>
            <th>
                Description
            </th>
            <th>
                DateTime
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: item.BlogId %>
            </td>
            <td>
                <%: item.CategoryMaster.Name %>
            </td>
            <td>
                <%: item.User.UserName %>
            </td>
            <td>
                <%: item.Description %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.DateTime) %>
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>

