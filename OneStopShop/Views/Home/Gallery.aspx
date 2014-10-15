<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Gallery
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" media="screen" type="text/css" href="/content/zoomimage.css" />
<script type="text/javascript" src="/content/jquery.js"></script>
<script type="text/javascript" src="/content/eye.js"></script>
<script type="text/javascript" src="/content/utils.js"></script>
<script type="text/javascript" src="/content/zoomimage.js"></script>
<script type="text/javascript" src="/content/layout.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

    <h2>Gallery</h2>
    <table>
        <tr>
            <td class="image"><a href="/content/images/gallery/1.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s1.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/2.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s2.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/3.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s3.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/4.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s4.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
        </tr><tr>
            <td class="image"><a href="/content/images/gallery/5.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s5.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/6.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s6.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/7.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s7.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/8.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s8.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
        </tr><tr>
            <td class="image"><a href="/content/images/gallery/9.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s9.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/10.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s10.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/11.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s11.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/12.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s12.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
        </tr><tr>
            <td class="image"><a href="/content/images/gallery/13.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s13.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/14.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s14.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/15.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s15.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/16.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s16.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
        </tr><tr>
            <td class="image"><a href="/content/images/gallery/17.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s17.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/18.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s18.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/19.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s19.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
            <td class="image"><a href="/content/images/gallery/20.jpg" title="My Album" class="example2"><img src="/content/images/gallery/s20.jpg" alt="Seashell" width='80px' height='60px' /></a></td>
        </tr><tr>
        </tr>
    </table>

</asp:Content>
