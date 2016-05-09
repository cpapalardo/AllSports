using System;
using System.Collections.Generic;
using System.Web;

namespace AllSports.Models {
	public class ValidationException : Exception {
		public ValidationException(string message)
			: base(message) {
			
		}
	}
}