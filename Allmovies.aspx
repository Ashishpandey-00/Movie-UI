<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Allmovies.aspx.cs" Inherits="Allmovies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="SSM.css" rel="stylesheet" />
    <script>
        function showcomment() {
            var a = document.getElementById("Button2").value;
            if (a == "show") {
                document.getElementById("GridView1").style.display = "block";
            }
        }</script>
</head>
<body style="background-color: floralwhite;">
    <form id="form1" runat="server">
        <div class="md">
            <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
            <div>
                <asp:Button ID="Button3" runat="server" Text="<" CssClass="pb" OnClick="Button3_Click" ToolTip="Previous Page" /></div>
            <div class="ld">
                <asp:Image ID="Image1" runat="server" class="avatar" /></div>
            <div class="rd">
                <div class="movie-name">
                    <h1 class="hs">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h1>
                </div>
                <div class="movie-about">
                    <h2 style="color: white; font-family: roboto; margin-left: 300px;">About Movie</h2>
                    <p style="color: white; font-family: roboto; margin-left: 300px;">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></p>
                </div>
                <div class="movie-rate">
                    <table>
                        <tr>
                            <td>
                                <div class="num">
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                                <div style="margin-right: -199px; margin-top: 10px;" class="rate">
                                    <asp:RadioButton ID="RadioButton1" runat="server" name="rate" value="5" ToolTip="1" />
                                    <asp:RadioButton ID="RadioButton2" runat="server" name="rate" value="4" ToolTip="2" />
                                    <asp:RadioButton ID="RadioButton3" runat="server" name="rate" value="3" ToolTip="3" />
                                    <asp:RadioButton ID="RadioButton4" runat="server" name="rate" value="2" ToolTip="4" />
                                    <asp:RadioButton ID="RadioButton5" runat="server" name="rate" value="1" ToolTip="5" />
                                </div>
                            </td>
                            <td>
                                <div class="num" style="margin-left: 200px">
                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div>
                                <div class="comm">COMMENTS</div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div style="margin-left: 300px; margin-top: 10px; width: 100%">
                    <table>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" CssClass="tx" placeholder="  Add a comment...." Font-Size="X-Large"></asp:TextBox></td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="+" CssClass="btn" OnClick="Button1_Click" /></td>
                        </tr>
                    </table>
                </div>
                <div>
                    <button id="Button2" class=" vc" type="button" value="show" onclick="showcomment()">View Comment's</button>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="comment" HeaderText="Comment`s" SortExpression="comment" HeaderStyle-Width="1500px" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="#f84464" Font-Size="30px" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:a2ConnectionString %>" SelectCommand="SELECT  [comment] FROM [mrc] WHERE ([movieid] = @movieid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox2" Name="movieid" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
