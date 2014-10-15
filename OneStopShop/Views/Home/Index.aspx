<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: ViewData["Message"] %></h2>
    <br /><br /><br />
    <p>
       The project involved the development of a web based application that allowed international students re-locating to a different region in the world to study, 
       the opportunity to familiarise themselves with their new locale. The concept arose for this application as feedback we received from international students stated 
       the difficulties they had to surpass, to adapt to their new surroundings. Non International students would take these things for granted.
    </p><p> Our aim for the application 
       was to develop software that could be adapted using internationalisation and localisation techniques to work the world over. The possibilities for content where abundant, 
       however we endeavoured to keep the focus narrow in terms of the essentials required.
    </p>
</asp:Content>
