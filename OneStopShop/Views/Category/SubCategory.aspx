<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<OneStopShop.Models.SubCategoryMaster>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SubCategory
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <%: Html.ActionLink(Model.CategoryMaster.Name, "Browse", new { Category = Model.CategoryMaster.Name })%> >> <%: Model.Name %>

    <h2><i><%: Model.Name %></i></h2>
    <table>
        <tr>
            <td>
                <p>
                    <img alt="<%: Model.Name %>" style="float:left;width:150px;height:150px;margin-right:5px" src="/content/images/<%: Model.PhotoURL %>" />
                    <%: Model.Description %>
                </p>
            </td>
            <td valign="top" style="border-left-style:dotted; border-left-width:thin;" width="20%">
                <h3>Reference Sites</h3>
                <ul>
                <% foreach (var referenceSite in Model.CategoryMaster.ReferenceSitesMasters)
                       { %> <li><a href="<%: referenceSite.URL %>" target="_blank"><%: referenceSite.Name %></a></li> <% } %>
                </ul>
            </td>
        </tr><tr>
            <td>&nbsp;</td>
        </tr><tr>
            <td>
                <h3>Related Blogs</h3>
                <table id="blog">
                     <% foreach (var blog in Model.CategoryMaster.BlogMasters) { %> 
                        <tr>
                            <td><%: blog.UserName %></td>
                            <td><%: Html.ActionLink(blog.Description, "Blog", new { id = blog.BlogId }) %></td>
                            <td><%: blog.DateTime %></td>
                        </tr>
                     <% } %>
                </table>
                
                <%: Html.ActionLink("Write Blog", "Create", "BlogManager", new { Categoryid = Model.CategoryMaster.CategoryId }, null)%>

            </td>
        </tr>
    </table>
</asp:Content>
