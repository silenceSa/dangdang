package com.yidu.dangdang.comment.domain;

public class Common {
	    //品论ID
		private String commentId;
		//评论内容
		private String commentText;
		//评论时间
		private String commentTime;
		//评分
		private int score;
		//用户Id
		private String customerId;
		//商品Id
		private String productId;
		//商品名
		private String productName;
		//用户名
		private String customerName;
		//管理回复
		private String reply;
		
		public Common(){}

		public String getCommentId() {
			return commentId;
		}

		public void setCommentId(String commentId) {
			this.commentId = commentId;
		}

		public String getCommentText() {
			return commentText;
		}

		public void setCommentText(String commentText) {
			this.commentText = commentText;
		}

		public String getCommentTime() {
			return commentTime;
		}

		public void setCommentTime(String commentTime) {
			this.commentTime = commentTime;
		}

		public int getScore() {
			return score;
		}

		public void setScore(int score) {
			this.score = score;
		}

		public String getCustomerId() {
			return customerId;
		}

		public void setCustomerId(String customerId) {
			this.customerId = customerId;
		}

		public String getProductId() {
			return productId;
		}

		public void setProductId(String productId) {
			this.productId = productId;
		}

		public String getProductName() {
			return productName;
		}

		public void setProductName(String productName) {
			this.productName = productName;
		}

		public String getCustomerName() {
			return customerName;
		}

		public void setCustomerName(String customerName) {
			this.customerName = customerName;
		}

		public String getReply() {
			return reply;
		}

		public void setReply(String reply) {
			this.reply = reply;
		}

		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result
					+ ((commentId == null) ? 0 : commentId.hashCode());
			result = prime * result
					+ ((commentText == null) ? 0 : commentText.hashCode());
			result = prime * result
					+ ((commentTime == null) ? 0 : commentTime.hashCode());
			result = prime * result
					+ ((customerId == null) ? 0 : customerId.hashCode());
			result = prime * result
					+ ((customerName == null) ? 0 : customerName.hashCode());
			result = prime * result
					+ ((productId == null) ? 0 : productId.hashCode());
			result = prime * result
					+ ((productName == null) ? 0 : productName.hashCode());
			result = prime * result + ((reply == null) ? 0 : reply.hashCode());
			result = prime * result + score;
			return result;
		}

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Common other = (Common) obj;
			if (commentId == null) {
				if (other.commentId != null)
					return false;
			} else if (!commentId.equals(other.commentId))
				return false;
			if (commentText == null) {
				if (other.commentText != null)
					return false;
			} else if (!commentText.equals(other.commentText))
				return false;
			if (commentTime == null) {
				if (other.commentTime != null)
					return false;
			} else if (!commentTime.equals(other.commentTime))
				return false;
			if (customerId == null) {
				if (other.customerId != null)
					return false;
			} else if (!customerId.equals(other.customerId))
				return false;
			if (customerName == null) {
				if (other.customerName != null)
					return false;
			} else if (!customerName.equals(other.customerName))
				return false;
			if (productId == null) {
				if (other.productId != null)
					return false;
			} else if (!productId.equals(other.productId))
				return false;
			if (productName == null) {
				if (other.productName != null)
					return false;
			} else if (!productName.equals(other.productName))
				return false;
			if (reply == null) {
				if (other.reply != null)
					return false;
			} else if (!reply.equals(other.reply))
				return false;
			if (score != other.score)
				return false;
			return true;
		}

		@Override
		public String toString() {
			return "Common [commentId=" + commentId + ", commentText="
					+ commentText + ", commentTime=" + commentTime + ", score="
					+ score + ", customerId=" + customerId + ", productId="
					+ productId + ", productName=" + productName
					+ ", customerName=" + customerName + ", reply=" + reply
					+ "]";
		}

		public Common(String commentId, String commentText, String commentTime,
				int score, String customerId, String productId,
				String productName, String customerName, String reply) {
			super();
			this.commentId = commentId;
			this.commentText = commentText;
			this.commentTime = commentTime;
			this.score = score;
			this.customerId = customerId;
			this.productId = productId;
			this.productName = productName;
			this.customerName = customerName;
			this.reply = reply;
		}
		
		
	
}
