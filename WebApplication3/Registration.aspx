<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication3.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>McMars Registration</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            width: 100%;
            min-height: 100vh;
            background-image: url('img/bg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            box-sizing: border-box;
        }

        .container {
            width: 95%;
            max-width: 600px;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            margin-top: 20px;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
            align-items: center;
            box-sizing: border-box;
        }

        .logo {
            width: 100%;
            text-align: center;
            margin-bottom: 20px;
        }

            .logo img {
                max-width: 150px;
                height: auto;
            }

        .login-form {
            width: 100%;
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
            font-size: 28px;
            color: green;
            text-align: center;
        }

        .label {
            font-size: 18px;
            color: black;
        }

        .form-control {
            width: 95%;
            padding: 8px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .btnlgn {
            border: none;
            outline: none;
            height: 40px;
            width: 150px;
            margin-top: 1rem;
            font-size: 17px;
            color: #140c10;
            background-color: lightgreen;
            cursor: pointer;
            border-radius: 20px;
            transition: .3s ease-in-out;
        }

        .btnlgn1 {
            border: none;
            outline: none;
            height: 40px;
            width: 150px;
            margin-top: 1rem;
            font-size: 17px;
            color: #140c10;
            background-color: lightgreen;
            cursor: pointer;
            border-radius: 20px;
            transition: .3s ease-in-out;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            width: 100%;
            margin-bottom: 15px;
        }

        .calendar-control {
            max-width: 100%;
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
            border-top: 1px solid #ccc;
            margin-top: 20px;
        }

            .footer p {
                margin: 5px 0;
            }

        .underline {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="logo">
                <asp:Image ID="Image2" runat="server" src="img/logo.png" alt="McMars Logo" />
            </div>
            <div class="login-form">
                <table>
                    <thead>
                        <tr>
                            <th colspan="2" class="header-label">
                                <asp:Label ID="Label1" runat="server" Text="Registration Form"></asp:Label>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="form-group">
                            <td class="label">
                                <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="form-group">
                            <td class="label">
                                <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="form-group">
                            <td class="label">
                                <asp:Label ID="Label7" runat="server" Text="Date of Birth"></asp:Label>
                            </td>
                            <td>
                                <div class="calendar-control">
                                    <asp:Calendar ID="Calendar1" runat="server" Width="100%"></asp:Calendar>
                                </div>
                            </td>
                        </tr>
                        <tr class="form-group">
                            <td class="label">
                                <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="form-group">
                            <td class="label">
                                <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="form-group">
                            <td class="label">
                                <asp:Label ID="Label14" runat="server" Text="Confirm Password"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="lableMSG" runat="server" CssClass="form-control" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;">
                                <asp:Button ID="Button2" runat="server" Text="Back" CssClass="btnlgn1" OnClick="Button2_Click" />
                                <asp:Button ID="Button1" runat="server" Text="Register Now" CssClass="btnlgn" OnClick="Button1_Click" />

                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
