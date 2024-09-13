<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chart.aspx.cs" Inherits="MIS332.chart" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chart Example</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                url: 'Chart.aspx/GetChartData', 
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