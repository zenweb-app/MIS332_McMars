<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication3.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Dashboard.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="LG2">
            <div class="header">
                <h1>Dashboard</h1>
            </div>
            <div class="tablee1">
                <div class="sensor-box">
                    <div class="sensors-top">
                        <a href="SolarPanel.aspx">
                            <div class="sensor">
                                <img src="img/solarpanel.png" />
                                <h4>Sensor 1</h4>
                                <span>Solar Panel</span>

                            </div>
                        </a>
                        <a href="Pressure.aspx">
                            <div class="sensor">
                                <img src="img/pressure.png" />
                                <h4>Sensor 2</h4>
                                <span>Pressure</span>
                            </div>
                        </a>
                        <a href="Moisture.aspx">
                            <div class="sensor">
                                <img src="img/moisture.png" />
                                <h4>Sensor 3</h4>
                                <span>Moisture</span>
                            </div>
                        </a>
                    </div>
                    <div class="sensors-bottom">
                        <a href="Co2.aspx">
                            <div class="sensor">
                                <img src="img/co2.png" />
                                <h4>Sensor 4</h4>
                                <span>Carbon Dioxide</span>
                            </div>
                        </a>
                        <a href="Temperature.aspx">
                            <div class="sensor">
                                <img src="img/temperature.png" />
                                <h4>Sensor 5</h4>
                                <span>Temperature</span>
                            </div>
                        </a>
                        <a href="Humidity.aspx">
                            <div class="sensor">
                                <img src="img/humidity.png" />
                                <h4>Sensor 6</h4>
                                <span>Humidity</span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>


</html>

