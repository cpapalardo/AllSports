using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace AllSports.Utils {
	public class Sql {
		public static SqlConnection Open() {
			SqlConnection conn = new SqlConnection("string de conexão");
			conn.Open();
			return conn;
		}
	}
}
