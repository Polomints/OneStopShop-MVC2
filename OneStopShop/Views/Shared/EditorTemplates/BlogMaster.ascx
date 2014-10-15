<%@ Import Namespace="OneStopShop" %>
<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<OneStopShop.Models.BlogMaster>" %>

<script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
<script src="/Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
<script src="/Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>
            
                 
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Description) %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.Description, new { rows = 10, cols = 70 })%>
                <%: Html.ValidationMessageFor(model => model.Description) %>
            </div>


