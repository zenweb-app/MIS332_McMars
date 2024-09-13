<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication3.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>McMars Home</title>
 <style>
     body {
         background-image: url('img/bg.jpg');
         background-size: cover;
         background-repeat: no-repeat;
         background-attachment: fixed;
         font-family: Arial, sans-serif;
         font-size: 25px;
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
 </style>
</head>
<body>
    <form id="form1" runat="server">

      <asp:Table ID="Table1" runat="server" Style="width: 100%; text-align: center;">
     <asp:TableRow>
         <asp:TableCell HorizontalAlign="Center" Style="width: 20%;">
             <asp:Label ID="Label10" runat="server" Text="Home" Style="font-size: 22px; color: teal"></asp:Label>
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
             <asp:LinkButton ID="LinkButton2" runat="server" Text="Log In" PostBackUrl="~/LogIn.aspx" CssClass="link-button"></asp:LinkButton>
         </asp:TableCell>
     </asp:TableRow>
 </asp:Table>


        <asp:Table ID="Table2" runat="server" CssClass="content-section">
            <asp:TableRow>
                <asp:TableCell CssClass="text-content" ColumnSpan="4">
                    <asp:Image ID="Image4" runat="server" ImageUrl="img/greenmars.png" Style="width: 600px" />
                    <p>Explore our state-of-the-art potato greenhouse, meticulously engineered to thrive under Martian conditions. Our advanced monitoring system ensures optimal growth by continuously tracking air quality, temperature, light levels, humidity, soil moisture, and solar panel efficiency.</p>
                </asp:TableCell>
                <asp:TableCell CssClass="image-content">
                    <asp:Image ID="Image2" runat="server" ImageUrl="img/astro1.png" Style="width: 400px" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>


        <asp:Table ID="Table3" runat="server" CssClass="content-section">
            <asp:TableRow>
                <asp:TableCell CssClass="text-content">
                    <asp:Image ID="Image5" runat="server" ImageUrl="img/agri.png" Style="width: 900px" />
                    <p>Pioneering life beyond Earth, the McMars Greenhouse project is sowing the seeds of space exploration by growing the future of Martian colonization. For space agencies and investors, this is the next step in sustainable agriculture on Mars—where science meets space and revolutionizes farming in extreme environments. Agricultural scientists and researchers will push the limits of plant science, while environmentalists can embrace eco-friendly farming in space, feeding dreams of a greener tomorrow on the Red Planet.</p>
                </asp:TableCell>
                <asp:TableCell CssClass="image-content">
                    <asp:Image ID="Image3" runat="server" ImageUrl="img/astro2.png" Style="width: 400px" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>


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
