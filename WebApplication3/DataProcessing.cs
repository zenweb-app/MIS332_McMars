using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using Npgsql;
using System.Data;
using Newtonsoft.Json;

namespace MIS332
{
    public class DataProcessing
    {
        public DataTable GetDataFromDatabase()
        {
            string connectionString = "Host=greenmars.cva2gia0mtjs.ca-central-1.rds.amazonaws.com;Port=5432;Username=data_analyst;Password=MIS331-2024T3-dataanalyst;Database=greenmars;";
            DataTable dt = new DataTable();

            using (var conn = new NpgsqlConnection(connectionString))
            {
                conn.Open();
                string query = "SELECT * FROM public.co2 where time > NOW() - INTERVAL'1 days'";

                using (var cmd = new NpgsqlCommand(query, conn))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        dt.Load(reader);
                    }
                }
            }

            return dt;
        }

        public string ProcessChartData()
        {
            DataTable dt = GetDataFromDatabase();
            var data = new List<object>();

            foreach (DataRow row in dt.Rows)
            {
                data.Add(new
                {
                    Column1 = row["time"],
                    Column2 = row["value"]
                });
            }

            // Return the serialized JSON data
            return JsonConvert.SerializeObject(data);
        }
    }
}