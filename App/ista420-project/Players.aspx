<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Players.aspx.cs" Inherits="ista420_project.Players" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <header>
        <img src="images/cover-photo_1280-200.jpg" alt="Background Photo">
        <div class="main-nav">
            <ul class="nav">
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="Teams.aspx">Teams</a></li>
                <li><a href="Players.aspx">Rosters</a></li>
            </ul>
        </div>
    </header>

<%--    <main class="flex">--%>
<%--        <div class="card">--%>
            <h2>Team Rosters</h2>
            
            <asp:GridView ID="GridViewPlayers" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcePlayers"
                Width="1500px" 
                CssClass="mGrid"
                PagerStyle-CssClass="pgr"
                AlternatingRowStyle-CssClass="alt" >
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="TeamName" HeaderText="TeamName" SortExpression="TeamName" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                        <asp:BoundField DataField="JerseyNum" HeaderText="JerseyNum" SortExpression="JerseyNum" />
                    </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourcePlayers" runat="server" ConnectionString="<%$ ConnectionStrings:ista420-projectConnectionString %>" 
                    SelectCommand="SELECT teams.TeamName, roster.FirstName, roster.LastName, roster.Position, roster.JerseyNum FROM teams INNER JOIN roster ON teams.TeamID = roster.TeamID ORDER BY teams.TeamID">

                </asp:SqlDataSource>

            <%--</div>--%>
            
  

<%--    </main>--%>



</asp:Content>