<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestWebForm.aspx.cs" Inherits="ista420_project.TestWebForm" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Player Edit's</title>
    <link rel="stylesheet" type="text/css"href="/Content/bootstrap.css"> 
</head>
<body>
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

    <form id="form1" runat="server">
    <div>
    
        Roster Entry:</div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label> &nbsp
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <br /> <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label> &nbsp
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> <br /> <br />
            <asp:Label ID="Label3" runat="server" Text="Position"></asp:Label> &nbsp
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> <br /> <br />
            <asp:Label ID="Label4" runat="server" Text="Jersey Number"></asp:Label> &nbsp
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> <br /> <br />
            <asp:Label ID="Label5" runat="server" Text="Team Assignment"></asp:Label> &nbsp
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="TeamName" DataValueField="TeamID"></asp:DropDownList>

            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ista420-projectConnectionString %>" 
                InsertCommand="INSERT INTO roster(FirstName, LastName, Position, JerseyNum) VALUES (@FirstName, @LastName, @Position, @JerseyNum)" 
                SelectCommand="SELECT [FirstName], [LastName], [Position], [JerseyNum] FROM [roster]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="FirstName" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="LastName" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="Position" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox4" Name="JerseyNum" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>--%>
          
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ista420-projectConnectionString %>" 
                InsertCommand="INSERT INTO roster(TeamID, FirstName, LastName, Position, JerseyNum) VALUES (@TeamID, @FirstName, @LastName, @Position, @JerseyNum)"
                SelectCommand="SELECT [TeamID], [TeamName] FROM [teams]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="TeamID" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="TextBox1" Name="FirstName" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="LastName" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="Position" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox4" Name="JerseyNum" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
             
        </p>
    </form>
</body>
</html>

