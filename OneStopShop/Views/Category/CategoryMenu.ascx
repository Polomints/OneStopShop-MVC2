<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<OneStopShop.Models.CategoryMaster>>" %>

    <table width="199" height="400" border="1">
        <% foreach (var category in Model)
           { %>
            <tr>
                <td width="189" height="63" bordercolor="#FFFFFF" bgcolor="#3FC2ED">
                    <div align="center" class="style2">
                        <%: Html.ActionLink(category.Name, "Browse", "Category", new { Category = category.Name }, null)%>
                    </div>
                </td>
            </tr>    
        <% } %>
    </table>


