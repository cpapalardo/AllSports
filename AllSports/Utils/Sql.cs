using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace AllSports.Utils {
	public class Sql {
		public static SqlConnection Open() {
			SqlConnection conn = new SqlConnection("Server=tcp:allsports.database.windows.net,"
			+ "1433;Database=allsports;User ID=allsports@allsports;"
			+ "Password=Bandtec2016;Encrypt=True;TrustServerCertificate=False;"
			+ "Connection Timeout=30;");
			conn.Open();
			return conn;
		}
	}
}
