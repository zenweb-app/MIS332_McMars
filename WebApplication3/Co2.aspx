<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Co2.aspx.cs" Inherits="WebApplication3.Co2" %>

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
                    <asp:LinkButton ID="LinkButton8" runat="server" Text="Home" PostBackUrl="~/HomePage.aspx" CssClass="link-button"></asp:LinkButton>
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
                    <asp:Label ID="Label12" runat="server" Text="Dashboard" NavigateUrl="~/Dashboard.aspx" CssClass="link-button"></asp:Label>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" Style="width: 20%;">
                    <asp:LinkButton ID="LinkButton2" runat="server" Text="Log Out" PostBackUrl="~/HomePage.aspx" CssClass="link-button"></asp:LinkButton>


                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <center>
             <h2>CO2 Data Chart</h2>
            <canvas id="myChart" width="400" height="200"></canvas>
        </div>
    </form>
    <script>
        console.log("Chart.js version:", Chart); 
</script>

    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                type: "POST",
                url: 'chart.aspx/GetChartData', 
                contentType: "application/json; charset=utf-8",
                dataType: "json",  
                success: function (response) {
                   
                    console.log("Response from WebMethod:", response.d);

                    
                    var data = JSON.parse(response.d);

                    console.log("Parsed Data: ", data);

                    var labels = data.map(function (d) { return d.Column1; });
                    var values = data.map(function (d) { return d.Column2; });

                    console.log("Labels: ", labels);
                    console.log("Values: ", values);

                    // Create the chart
                    var ctx = document.getElementById('myChart').getContext('2d');
                    var myChart = new Chart(ctx, {
                        type: 'line',  // You can also try 'bar' to test another type
                        data: {
                            labels: labels,
                            datasets: [{
                                label: 'CO2 Levels',
                                data: values,
                                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                borderColor: 'rgba(75, 192, 192, 1)',
                                borderWidth: 1
                            }]
                        },
                        options: {
                            scales: {
                                y: {
                                    beginAtZero: true
                                }
                            }
                        }
                    });
                },
                error: function (xhr, status, error) {
                    console.log("AJAX error:", status, error);  // Log any errors
                }
            });
        });
    </script>

</body>
</html>
