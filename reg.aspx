<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="ss1.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
         .ss {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            text-decoration: none;
            font-size:18px;
            color: black;
        }
        .ss:hover{
                        color: orangered;

        }
    </style>
</head>
<body style="background-color: dodgerblue;">
    <form id="form1" runat="server" style="margin-top: 150px; margin-left: 350px">
        <div style="width: 500px; height: 100%;">
            <div style="border-radius: 5px; background-color: whitesmoke; padding: 20px; font-family: Arial, Helvetica, sans-serif">
                <div class="l1">Registration Page</div>
                <asp:Label ID="Label1" CssClass="lb" runat="server" Text="Label">UserName:</asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" CssClass="tb" runat="server" placeholder="   Enter Name  " autofocus="true"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" CssClass="lb" runat="server" Text="Label">Password:</asp:Label>
                <br />
                <asp:TextBox ID="TextBox2" CssClass="tb" runat="server" placeholder="   Enter Password  " TextMode="Password"></asp:TextBox>
                 <asp:Label ID="Label3" CssClass="lb" runat="server" Text="Label">Confirm Password:</asp:Label>
                <br />
                <asp:TextBox ID="TextBox3" CssClass="tb" runat="server" placeholder="   Password  " TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="CompareValidator"></asp:CompareValidator>
                <br />
                 <asp:Label ID="Label4" CssClass="lb" runat="server" Text="Label">Email:</asp:Label>
                <br />
                <asp:TextBox ID="TextBox4" CssClass="tb" runat="server" placeholder="   Enter Email"></asp:TextBox>
                <asp:Button ID="Button1" CssClass="btn1" runat="server" Text="Submit" OnClick="Button1_Click" /><br />
                <a href="main.aspx" class="ss"><i class="fa fa-sign-in"></i><strong>Log-Out</strong></a>
            </div>

        </div>
    </form>
</body>
</html>
