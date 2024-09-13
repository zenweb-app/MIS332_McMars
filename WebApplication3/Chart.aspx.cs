using System.Web.Services;
using Newtonsoft.Json;
using Npgsql;
using System;
using System.Data;

namespace MIS332
{
    public partial class chart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        [WebMethod]
        public static string GetChartData()
        {
            DataProcessing DataProcessing_instance = new DataProcessing();

            string chartdata = DataProcessing_instance.ProcessChartData();

            return chartdata;
        }

        [WebMethod]
        public static string GetChartData0()
        {
            var data = new[]
            {
        new { Column1 = "2024-09-01", Column2 = 400 },
        new { Column1 = "2024-09-02", Column2 = 420 },
        new { Column1 = "2024-09-03", Column2 = 390 }
    };

            return JsonConvert.SerializeObject(data);  // Serialize static data to JSON
        }
    }
}