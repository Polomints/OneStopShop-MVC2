<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<OneStopShop.Models.BlogMaster>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Blog
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <%: Html.ActionLink(Model.CategoryMaster.Name, "Browse", new { Category = Model.CategoryMaster.Name })%> >> Blog
    <h2><%: Model.CategoryMaster.Name %> Blog</h2>
    <table>
        <tr>
            <td>
                <table width="100%">
                    <tr>
                        <td>
                            <b><%: Model.UserName.ToUpper() %></b><br />
                            <%: String.Format("{0:g}", Model.DateTime) %>
                        </td>
                        <td style="background-color:#FFCC99; font-style: italic;color: #888;">
                            <%: Model.Description %>
                            <table align="right">
                                <tr>
                                    <td>
                                        <%: Html.ActionLink("Reply", "Create", "BlogThreadManager", new { BlogId = Model.BlogId }, null)%>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr><tr>
                        <td>&nbsp;</td>
                        <td>
                            <% foreach (var thread in Model.BlogThreads)
                               { %>
                            <table width="100%">
                                <tr>
                                    <td width="30%">
                                        <b><%: thread.UserName%></b><br />
                                        <%: String.Format("{0:g}", thread.DateTime)%>
                                    </td>
                                    <td style="background-color:#FFFFCC; font-style: italic;color: #888;"><%: thread.Description%></td>
                                </tr>
                            </table>
                            <% } %>
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top" style="border-left-style:dotted; border-left-width:thin;" width="20%">
                <h3>Reference Sites</h3>
                <ul>
                <% foreach (var referenceSite in Model.CategoryMaster.ReferenceSitesMasters)
                       { %> <li><a href="<%: referenceSite.URL %>" target="_blank"><%: referenceSite.Name %></a></li> <% } %>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>

