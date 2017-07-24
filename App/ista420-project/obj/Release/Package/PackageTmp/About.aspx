<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ista420_project.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="cover-photo">
        <img src="images/cover-photo_1280-200.jpg" />
    </div>

    <nav class="nav" id="main-menu-box">
        <ul>
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="Teams.aspx">Teams</a></li>
            <li><a href="Players.aspx">Players</a></li>
            <li><a href="About.aspx">About</a></li>
            <li><a href="Contact.aspx">Contact</a></li>
        </ul>
       </nav>
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
</asp:Content>
