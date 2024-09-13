<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Humidity.aspx.cs" Inherits="WebApplication3.Humidity" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/styles.css">
    <title>McMars Dashboard</title>
    <style>
        body {
            background-image: url('img/bg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            font-size: 25px;
        }

        .section {
            padding: 20px;
            margin: 20px 0;
            background-color: rgba(255, 255, 255, 0.4);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }


        .link-button {
            font-size: 22px;
            color: teal;
            background: none;
            border: none;
            cursor: pointer;
            padding: 0;
            text-decoration: none;
        }

            .link-button:hover {
                text-decoration: underline;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Table ID="Table1" runat="server" Style="width: 100%; text-align: center;">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%;">
                    <asp:LinkButton ID="LinkButton8" runat="server" Text="Home" PostBackUrl="~/Home_Page.aspx" CssClass="link-button"></asp:LinkButton>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%;">
                    <asp:LinkButton ID="LinkButtonAboutUs" runat="server" Text="About Us" PostBackUrl="~/AboutUs.aspx" CssClass="link-button"></asp:LinkButton>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%;">
                    <asp:HyperLink ID="HyperLinkHomePage" runat="server" NavigateUrl="~/Home_Page.aspx">
                        <asp:Image ID="Image1" runat="server" ImageUrl="img/logo.png" Style="width: 100px" />
                    </asp:HyperLink>
                </asp:TableCell>

                <asp:TableCell HorizontalAlign="Center" Style="width: 20%;">
                    <asp:Label ID="Label12" runat="server" Text="Dashboard" Style="font-size: 22px; color: teal"></asp:Label>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%;">
                    <asp:LinkButton ID="LinkButton2" runat="server" Text="Log Out" PostBackUrl="~/Home_Page.aspx" CssClass="link-button"></asp:LinkButton>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <center>
            <asp:Table ID="Table2" runat="server">
                <asp:TableRow>
                    <asp:TableCell class="section">
                        <asp:Image ID="Image3" runat="server" ImageUrl="img/humidity.png" Style="width: 200px" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h2>Humidity</h2>

        </center>

    </form>
</body>
</html>
