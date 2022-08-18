package com.spring.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ExerciseChartDTO {
	
	private int userNum;
	private int setCount;
	private String expart;
	private String expartCode;
	private int exId;
	private String exName;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date useDate;
	private int recordNum;

	public int getRecordNum() {
		return recordNum;
	}

	public void setRecordNum(int recordNum) {
		this.recordNum = recordNum;
	}

	public Date getUseDate() {
		return useDate;
	}

	public void setUseDate(Date useDate) {
		this.useDate = useDate;
	}

	public int getExId() {
		return exId;
	}

	public void setExId(int exId) {
		this.exId = exId;
	}

	public String getexName() {
		return exName;
	}

	public void setexName(String exName) {
		this.exName = exName;
	}

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
		return "ExerciseChartDTO [userNum=" + userNum + ", setCount=" + setCount + ", expart=" + expart
				+ ", expartCode=" + expartCode + ", exId=" + exId + ", exName=" + exName + ", useDate=" + useDate
				+ ", recordNum=" + recordNum + "]";
	}	
	
	
}
