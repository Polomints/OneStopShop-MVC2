<%@ Import Namespace="OneStopShop" %>
<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<OneStopShop.Models.ReferenceSitesMaster>" %>

<script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
<script src="/Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
<script src="/Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.CategoryId) %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownList("CategoryId", new SelectList(ViewData["Categories"] as IEnumerable, "CategoryId", "Name", Model.CategoryId)) %>
                <%: Html.ValidationMessageFor(model => model.CategoryId) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Name) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Name) %>
                <%: Html.ValidationMessageFor(model => model.Name) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.URL) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.URL) %>
                <%: Html.ValidationMessageFor(model => model.URL) %>
            </div>


