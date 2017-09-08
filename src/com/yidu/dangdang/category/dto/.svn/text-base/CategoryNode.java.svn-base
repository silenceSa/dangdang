package com.yidu.dangdang.category.dto;

public class CategoryNode {

	private String id;
	
	private String text;
	
	private String parentId;
	
	private String state;
	
	private String describe;

	
	
	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}



	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}



	/**
	 * @return the text
	 */
	public String getText() {
		return text;
	}



	/**
	 * @param text the text to set
	 */
	public void setText(String text) {
		this.text = text;
	}



	/**
	 * @return the parentId
	 */
	public String getParentId() {
		return parentId;
	}



	/**
	 * @param parentId the parentId to set
	 */
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}



	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}



	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}



	/**
	 * @return the describe
	 */
	public String getDescribe() {
		return describe;
	}



	/**
	 * @param describe the describe to set
	 */
	public void setDescribe(String describe) {
		this.describe = describe;
	}



	public CategoryNode(){
		
	}



	/**
	 * @param id
	 * @param text
	 * @param parentId
	 * @param state
	 * @param describe
	 */
	public CategoryNode(String id, String text, String parentId, String state,
			String describe) {
		super();
		this.id = id;
		this.text = text;
		this.parentId = parentId;
		this.state = state;
		this.describe = describe;
	}



	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((describe == null) ? 0 : describe.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result
				+ ((parentId == null) ? 0 : parentId.hashCode());
		result = prime * result + ((state == null) ? 0 : state.hashCode());
		result = prime * result + ((text == null) ? 0 : text.hashCode());
		return result;
	}



	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CategoryNode other = (CategoryNode) obj;
		if (describe == null) {
			if (other.describe != null)
				return false;
		} else if (!describe.equals(other.describe))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (parentId == null) {
			if (other.parentId != null)
				return false;
		} else if (!parentId.equals(other.parentId))
			return false;
		if (state == null) {
			if (other.state != null)
				return false;
		} else if (!state.equals(other.state))
			return false;
		if (text == null) {
			if (other.text != null)
				return false;
		} else if (!text.equals(other.text))
			return false;
		return true;
	}



	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "CategoryNode [id=" + id + ", text=" + text + ", parentId="
				+ parentId + ", state=" + state + ", describe=" + describe
				+ "]";
	}
	
	
	
	
	
	
	
}
