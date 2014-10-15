<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<OneStopShop.Models.BlogMaster>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Blogs
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Top Thread Blogs</h2>
    <table id="blog">
            <% foreach (var blog in Model) { %> 
            <tr>
                <td><%: blog.UserName %></td>
                <td><%: Html.ActionLink(blog.Description, "Blog", new { id = blog.BlogId }) %></td>
                <td><%: blog.DateTime %></td>
            </tr>
            <% } %>
    </table>
</asp:Content>
