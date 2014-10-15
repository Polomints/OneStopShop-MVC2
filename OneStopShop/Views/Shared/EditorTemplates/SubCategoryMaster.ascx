<%@ Import Namespace="OneStopShop" %>
<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<OneStopShop.Models.SubCategoryMaster>" %>

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
                <%: Html.TextBoxFor(model => model.Name)%>
                <%: Html.ValidationMessageFor(model => model.Name) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Description) %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.Description, new { rows = 5, cols = 50 })%>
                <%: Html.ValidationMessageFor(model => model.Description) %>
            </div>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.PhotoURL) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.PhotoURL) %>
                <%: Html.ValidationMessageFor(model => model.PhotoURL) %>
            </div>