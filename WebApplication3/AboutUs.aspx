<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WebApplication3.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
  <style>
        body {
            background-image: url('img/bg.jpg'); 
            background-size: cover;
            background-repeat: no-repeat; 
            background-attachment: fixed; 
            font-family: Arial, sans-serif; 
        }

        .section {
            padding: 20px;
            margin: 20px 0;
            background-color: rgba(255, 255, 255, 0.4); 
            border-radius: 10px; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

            .section h2 {
                font-size: 28px;
                color: teal;
                font-weight: bold;
                margin-bottom: 10px;
                text-align: left;
            }

            .section p {
                font-size: 18px;
                color: #333;
                text-align: justify;
            }

        .footer {
            text-align: center;
            padding: 10px 0;
            background-color: rgba(255, 255, 255, 0.6);
            border-top: 1px solid #ccc;
            margin-top: 20px;
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

        .footer p {
            margin: 5px 0;
        }

        .video-container {
            text-align: center;
            margin-top: 20px;
        }

            .video-container iframe {
                margin-top: 20px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

        .team-member {
            text-align: center;
            margin: 20px;
        }

            .team-member img {
                border-radius: 50%; 
                width: 150px;
                height: 150px;
                object-fit: cover; 
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            .team-member h3 {
                font-size: 20px;
                color: teal;
                margin: 10px 0 5px;
            }

            .team-member p {
                text-align: center;
                font-size: 16px;
                color: #333;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="Table1" runat="server" Style="width: 100%">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%">
                    <asp:LinkButton ID="LinkButtonHome" runat="server" Text="Home" PostBackUrl="~/HomePage.aspx" CssClass="link-button"></asp:LinkButton>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%">
                    <asp:Label ID="Label11" runat="server" Text="About Us" Style="font-size: 22px; color: teal"></asp:Label>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%">
                    <asp:HyperLink ID="HyperLinkHomePage" runat="server" NavigateUrl="~/HomePage.aspx">
                        <asp:Image ID="Image1" runat="server" ImageUrl="img/logo.png" Style="width: 100px" />
                    </asp:HyperLink>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%">

                  <asp:LinkButton ID="LinkButton1" runat="server" Text="Registration" PostBackUrl="~/Registration.aspx" CssClass="link-button"></asp:LinkButton>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%">
                    <asp:LinkButton ID="LinkButtonLogin" runat="server" Text="Log In" PostBackUrl="~/LogIn.aspx" CssClass="link-button"></asp:LinkButton>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <center>
            <div style="margin-top: 20px; margin-bottom: 30px;">
                <asp:Label ID="Label1" runat="server" Text="About Us" Style="font-size: 40px; color: teal; font-weight: bold;"></asp:Label>
            </div>
        </center>
        <center>
            <asp:Table ID="Table2" runat="server">
                <asp:TableRow>
                    <asp:TableCell class="section" ColumnSpan="2">
                        <h2>Our Story</h2>
                        <p>
                            <asp:Label ID="Label6" runat="server" Text="Inspired by the audacious spirit of exploration, from 2024 McMars embarked on a mission to conquer the seemingly impossible: growing potatoes on Mars."></asp:Label>
                        </p>
                        <div class="video-container">
                            <iframe width="560" height="315" src="https://www.youtube.com/embed/ki1052K0C3c" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell class="section" ColumnSpan="2">
                        <h2>Our Mission</h2>
                        <p>
                            <asp:Label ID="Label7" runat="server" Text="To cultivate a sustainable Martian ecosystem by pioneering potato cultivation, paving the way for human habitation"></asp:Label>
                        </p>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell class="section" ColumnSpan="2">
                        <h2>Our Vision</h2>
                        <p>
                            <asp:Label ID="Label8" runat="server" Text="A future where Earth's knowledge is harnessed to transform Mars into a verdant planet, ensuring humanity's survival and expansion beyond our home world"></asp:Label>
                        </p>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell class="section" ColumnSpan="2">
                        <h2>Our Team</h2>
                        <asp:Table ID="TeamTable" runat="server" Style="width: 100%">
                            <asp:TableRow>
                                <asp:TableCell class="team-member">
                                    <img src="img/francisco.png" alt="Francisco Alarcon" />
                                    <h3>Francisco Alarcon</h3>
                                    <p>Chief Martian Officer (CMO)</p>
                                </asp:TableCell>
                                <asp:TableCell class="team-member">
                                    <img src="img/ketan.png" alt="Ketan Bali" />
                                    <h3>Ketan Bali</h3>
                                    <p>Chief Terraforming Engineer (CTE)</p>
                                </asp:TableCell>
                                <asp:TableCell class="team-member">
                                    <img src="img/zen.png" alt="Ma. Janzen Dizon" />
                                    <h3>Ma. Janzen Dizon</h3>
                                    <p>Chief Botanist and Sustainability Officer (CBSO)</p>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </center>
        <div>
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

