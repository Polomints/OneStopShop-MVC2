<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<OneStopShop.ViewModels.CategoryBrowseViewModel>" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Browse
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><i><%: Model.Category.Name %></i></h2>
    <table>
        <tr>
            <td>
                <p>
                    <img alt="<%: Model.Category.Name %>" style="float:left;width:150px;height:150px;margin-right:5px;" src="/content/images/<%: Model.Category.PhotoURL %>" />
                    <%: Model.Category.Description %>
                </p>
            </td>
            <td rowspan="3" valign="top" style="border-left-style:dotted; border-left-width:thin; width:20%;">
                <h3>Reference Sites</h3>
                <ul>
                <% foreach (var referenceSite in Model.ReferenceSites)
                       { %> <li><a href="<%: referenceSite.URL %>" target="_blank"><%: referenceSite.Name  %></a></li> <% } %>
                </ul>
            </td>
        </tr><tr>
            <td>&nbsp;</td>
        </tr><tr>
            <td>
                <h3>Sub Categories</h3>
                <ul>
                <% foreach (var subCategory in Model.SubCategories)
                       { %> <li><%: Html.ActionLink(subCategory.Name, "SubCategory", new { id = subCategory.SubCategoryId })%></li> <% } %>
                </ul>
            </td>
        </tr><tr>
            <td>&nbsp;</td>
        </tr><tr>
            <td>
                <h3>Related Blogs</h3>
                <table id="blog">
                     <% foreach (var blog in Model.Blogs) { %> 
                        <tr>
                            <td><%: blog.UserName %></td>
                            <td><%: Html.ActionLink(blog.Description, "Blog", new { id = blog.BlogId }) %></td>
                            <td><%: blog.DateTime %></td>
                        </tr>
                     <% } %>
                </table>
                
                <%: Html.ActionLink("Write Blog", "Create", "BlogManager", new { Categoryid = Model.Category.CategoryId }, null)%>

            </td>
        </tr>
    </table>
</asp:Content>
