<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ista420_project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <header>
        <img src="images/cover-photo_1280-200.jpg" alt="Background Photo">
        <div class="main-nav">
            <ul class="nav">
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="Teams.aspx">Teams</a></li>
                <li><a href="Players.aspx">Rosters</a></li>
                <li><a href="#">Schedule</a></li>
                <li><a href="#">Results</a></li>
                <li><a href="#">Records</a></li>
            </ul>
        </div>
    </header>
    
    <main class="flex">
        <div class="card">
            <h2>Put stuff here for TEAMS PAGE</h2>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                </p>
        </div>
        
        <div class="card">
            <asp:GridView ID="GridView1" runat="server"         AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                Width="500px" 
                CssClass="mGrid"
                PagerStyle-CssClass="pgr"
                AlternatingRowStyle-CssClass="alt">
                <Columns>
                    <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ista420-projectConnectionString %>" 
                SelectCommand="SELECT teams.TeamName FROM teams">

            </asp:SqlDataSource>

        </div>   
    </main>    

</asp:Content>