<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ista420_project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <body>

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
                <h2>League News</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id lacus tempus, vulputate purus id, luctus eros. Donec quis condimentum sapien. Donec eu leo dignissim, imperdiet massa vitae, rutrum felis. Sed vitae urna molestie purus sodales hendrerit tristique rutrum sapien. In hac habitasse platea dictumst. Aliquam non justo tellus. In imperdiet enim justo, et commodo magna mattis ut. </p>
                <p>Aliquam in neque augue. Sed in cursus nibh. In ut efficitur dui. Vestibulum viverra augue lorem, ut laoreet purus tempus eu. Suspendisse ut eleifend orci. Etiam nec libero nec est consectetur suscipit. Ut gravida tortor vitae nibh venenatis, eu auctor arcu pharetra. </p>
            </div>

            <div class="card">
                <h2>Upcoming Games</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id lacus tempus, vulputate purus id, luctus eros. Donec quis condimentum sapien.</p>
                <ul class="skills">
                    <li>Team1 vs Team2</li>
                    <li>Team3 vs Team4</li>
                    <li>Team4 vs Team1</li>
                    <li>Team2 vs Team3</li>
                </ul>
                <p>Aliquam in neque augue. Sed in cursus nibh. In ut efficitur dui.</p>
            </div>
        </main>

        <footer>
            <ul>
                <li>
                    <img src="images/twitter-2430933_640.png" alt="Twitter Icon" class="social"></li>
                <li>
                    <img src="images/linkedin-2446228_640.png" alt="LinkedIn Icon" class="social"></li>
                <li>
                    <img src="images/github-154769_640.png" alt="GitHub Icon" class="social"></li>
            </ul>
            <p class="copyright">Copyright 2017, JA & TK RBL</p>
        </footer>
    </body>
</asp:Content>


