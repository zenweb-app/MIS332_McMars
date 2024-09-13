<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="WebApplication3.LogIn" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>McMars Log In</title>
    <link href="styles.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('img/bg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            font-size: 25px;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 70%;
            margin: auto;
           background-color: rgba(255, 255, 255, 0.4); 
            padding: 20px;
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

        .logo {
            width: 50%;
            text-align: center;
        }

            .logo img {
                max-width: 100%;
                height: auto;
            }

        .login-form {
            width: 50%;
        }

        table {
            width: 100%;
            border-spacing: 15px;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        .header-label {
            font-size: 40px;
            color: green;
            text-align: center;
        }

        .label {
            font-size: 35px;
            color: black;
        }

        .form-control {
            width: 20rem;
            padding: 10px;
            font-size: 20px;
        }

        .form-control1 {
            border: none;
            outline: none;
            height: 40px;
            width: 250px;
            margin-top: 0rem;
            font-size: 20px;
            color: #140c10;
            background-color: lightgreen;
            cursor: pointer;
            border-radius: 20px;
            transition: .3s ease-in-out;
        }

        .navbar {
            width: 100%;
            background-color: rgba(255, 255, 255, 0.6);
            border-bottom: 1px solid #ccc;
            padding: 10px 0;
            margin-bottom: 20px;
            text-align: center;
        }

            .navbar .nav-item {
                display: inline-block;
                margin: 0 20px;
                font-size: 22px;
                color: teal;
            }

        .footer {
            text-align: center;
            padding: 10px 0;
            background-color: rgba(255, 255, 255, 0.6);
            color: black;
            border-top: 1px solid #ccc;
            margin-top: 20px;
        }

            .footer p {
                margin: 5px 0;
            }

        .underline {
            text-decoration: underline;
            color: green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="Table1" runat="server" Style="width: 100%; text-align: center;">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%;">

                    <asp:LinkButton ID="LinkButton3" runat="server" Text="Home" PostBackUrl="~/HomePage.aspx" CssClass="link-button"></asp:LinkButton>

                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%;">
                    <asp:LinkButton ID="LinkButtonAboutUs" runat="server" Text="About Us" PostBackUrl="~/AboutUs.aspx" CssClass="link-button"></asp:LinkButton>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%;">
                    <asp:HyperLink ID="HyperLinkHomePage" runat="server" NavigateUrl="~/HomePage.aspx">
                        <asp:Image ID="Image1" runat="server" ImageUrl="img/logo.png" Style="width: 100px" />
                    </asp:HyperLink>
                </asp:TableCell>

                <asp:TableCell HorizontalAlign="Center" Style="width: 20%;">
                    <asp:LinkButton ID="LinkButton1" runat="server" Text="Registration" PostBackUrl="~/Registration.aspx" CssClass="link-button"></asp:LinkButton>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%;">
                    <asp:Label ID="Label10" runat="server" Text="Log In" Style="font-size: 22px; color: teal"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <div class="container">
            <div class="logo">
                <asp:Image ID="Image2" runat="server" src="img/logo.png" alt="McMars Logo" />
            </div>
            <div class="login-form">
                <table>
                    <thead>
                        <tr>
                            <th colspan="2" class="header-label">
                                <asp:Label ID="Label1" runat="server" Text="Log In with your McMars Account"></asp:Label>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="label">
                                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="label">
                                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;">
                                <asp:Button ID="Button1" runat="server" Text="Log In" CssClass="form-control1" OnClick="Button1_Click" />
                            </td>

                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;">

                                <asp:Label ID="labelmsg" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                       
                 
                    </tbody>
                </table>
            </div>
        </div>
        <div class="footer">
            <p>&copy; 2024 McMars. All rights reserved.</p>
            <p>McMars Corporation</p>
            <p>666 Burrard St #200, Vancouver, BC - Canada</p>
            <p>Email: <a href="mailto:info@mcmars.com">info@mcmars.com</a></p>
            <p>Phone: (604) 430-5111</p>
        </div>
    </form>
</body>
</html>

