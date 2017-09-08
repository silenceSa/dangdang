package com.yidu.dangdang.category.domain;

public class PhoneResult {
	
	private Result alibaba_aliqin_fc_sms_num_send_response;
	
	
	



	/**
	 * @return the alibaba_aliqin_fc_sms_num_send_response
	 */
	public Result getAlibaba_aliqin_fc_sms_num_send_response() {
		return alibaba_aliqin_fc_sms_num_send_response;
	}






	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "PhoneResult [alibaba_aliqin_fc_sms_num_send_response="
				+ alibaba_aliqin_fc_sms_num_send_response + "]";
	}






	/**
	 * @param alibaba_aliqin_fc_sms_num_send_response the alibaba_aliqin_fc_sms_num_send_response to set
	 */
	public void setAlibaba_aliqin_fc_sms_num_send_response(
			Result alibaba_aliqin_fc_sms_num_send_response) {
		this.alibaba_aliqin_fc_sms_num_send_response = alibaba_aliqin_fc_sms_num_send_response;
	}






	public class Result{
		private ResultDetail result;
		
		private String request_id;
		
		

		/**
		 * @return the result
		 */
		public ResultDetail getResult() {
			return result;
		}



		/**
		 * @param result the result to set
		 */
		public void setResult(ResultDetail result) {
			this.result = result;
		}



		/**
		 * @return the request_id
		 */
		public String getRequest_id() {
			return request_id;
		}



		/**
		 * @param request_id the request_id to set
		 */
		public void setRequest_id(String request_id) {
			this.request_id = request_id;
		}

		


		/* (non-Javadoc)
		 * @see java.lang.Object#toString()
		 */
		@Override
		public String toString() {
			return "Result [result=" + result + ", request_id=" + request_id
					+ "]";
		}




		public class ResultDetail{
			private String success;
			private String err_code;
			private String model;
			/**
			 * @return the success
			 */
			public String getSuccess() {
				return success;
			}
			/**
			 * @param success the success to set
			 */
			public void setSuccess(String success) {
				this.success = success;
			}
			/**
			 * @return the err_code
			 */
			public String getErr_code() {
				return err_code;
			}
			/**
			 * @param err_code the err_code to set
			 */
			public void setErr_code(String err_code) {
				this.err_code = err_code;
			}
			/**
			 * @return the model
			 */
			public String getModel() {
				return model;
			}
			/**
			 * @param model the model to set
			 */
			public void setModel(String model) {
				this.model = model;
			}
			/* (non-Javadoc)
			 * @see java.lang.Object#toString()
			 */
			@Override
			public String toString() {
				return "ResultDetail [success=" + success + ", err_code="
						+ err_code + ", model=" + model + "]";
			}
			
			
			
			
		}
	}

}
