<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LOM.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="SSLOM.css" rel="stylesheet" />
    <link href="SSLOM2.css" rel="stylesheet" />
    <style>
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="navbar">
            <h1 class="h1">LIST OF MOVIE'S IN 2021 <asp:Button ID="Button2" CssClass="hb" runat="server" Text="Log-Out" OnClick="Button2_Click" /></h1>
           </div> <div class="holder">
    <div class="c1">
    <div class="ld"><img src="Images/1.jpg" "   alt="Avatar" class="avatar" /><h3><asp:LinkButton ID="LinkButton1" runat="server"  CssClass="lb" PostBackUrl="~/Allmovies.aspx?Id=1">Zack Snyder`s Justice League</asp:LinkButton></h3></div>
    <div class="ld"><img src="Images/2.jpg" "  alt="Avatar" class="avatar" /><h3><asp:LinkButton ID="LinkButton2" runat="server"  CssClass="lb" PostBackUrl="~/Allmovies.aspx?Id=2">Monster Hunter</asp:LinkButton></h3></div>
    <div class="ld"><img src="Images/3.jpg" " alt="Avatar" class="avatar" /><h3><asp:LinkButton ID="LinkButton3" runat="server" CssClass="lb" PostBackUrl="~/Allmovies.aspx?Id=3">The Power</asp:LinkButton></h3></div>
    <div class="ld"><img src="Images/4.jpg" " alt="Avatar" class="avatar" /><h3><asp:LinkButton ID="LinkButton4" runat="server"  CssClass="lb" PostBackUrl="~/Allmovies.aspx?Id=4">Cold Pursuit</asp:LinkButton></h3></div>
    </div>

    <div class="c1">
    <div class="ld"><img src="Images/5.jpg" " alt="Avatar" class="avatar" /><h3><asp:LinkButton ID="LinkButton5" runat="server"  CssClass="lb" PostBackUrl="~/Allmovies.aspx?Id=5">Tenet</asp:LinkButton></h3></div>
    <div class="ld"><img src="Images/6.jpg" " alt="Avatar" class="avatar" /><h3><asp:LinkButton ID="LinkButton6" runat="server"  CssClass="lb" PostBackUrl="~/Allmovies.aspx?Id=6">Avenger`s Infinity War</asp:LinkButton></h3></div>
    <div class="ld"><img src="Images/7.jpg" " alt="Avatar" class="avatar" /><h3><asp:LinkButton ID="LinkButton7" runat="server"  CssClass="lb" PostBackUrl="~/Allmovies.aspx?Id=7">Rampage</asp:LinkButton></h3></div>
    <div class="ld"><img src="Images/8.jpg" " alt="Avatar" class="avatar" /><h3><asp:LinkButton ID="LinkButton8" runat="server"  CssClass="lb" PostBackUrl="~/Allmovies.aspx?Id=8">Inception</asp:LinkButton></h3></div>
    </div>
        
    <div class="c1">
    <div class="ld"><img src="Images/9.jpg"  alt="Avatar" class="avatar"/><h3><asp:LinkButton ID="LinkButton9" runat="server"  CssClass="lb" PostBackUrl="~/Allmovies.aspx?Id=9">Jurrasic Park</asp:LinkButton></h3></div>
    <div class="ld"><img src="Images/10.jpg" alt="Avatar" class="avatar"/><h3><asp:LinkButton ID="LinkButton10" runat="server" CssClass="lb" PostBackUrl="~/Allmovies.aspx?Id=10">Apocalypto</asp:LinkButton></h3></div>
    </div>

    </div>
    </form>
</body>
    <script>// When the user scrolls the page, execute myFunction
        window.onscroll = function () { myFunction() };

        // Get the navbar
        var navbar = document.getElementById("navbar");

        // Get the offset position of the navbar
        var sticky = navbar.offsetTop;

        // Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
        function myFunction() {
            if (window.pageYOffset >= sticky) {
                navbar.classList.add("sticky")
            } else {
                navbar.classList.remove("sticky");
            }
        }</script>
</html>
