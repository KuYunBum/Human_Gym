package com.spring.dto;

public class ExerciseChartDTO {
	
	private int userNum;
	private int setCount;
	private String expart;
	private String expartCode;

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public int getSetCount() {
		return setCount;
	}

	public void setSetCount(int setCount) {
		this.setCount = setCount;
	}

	public String getExpart() {
		return expart;
	}

	public void setExpart(String expart) {
		this.expart = expart;
	}

	public String getExpartCode() {
		return expartCode;
	}

	public void setExpartCode(String expartCode) {
		this.expartCode = expartCode;
	}
		
	@Override
	public String toString() {
		return "{userNum=" + userNum + ", setCount=" + setCount + ", expart=" + expart
				+ ", expartCode=" + expartCode + "}";
	}	
	
	
}
