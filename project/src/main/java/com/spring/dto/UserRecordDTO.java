package com.spring.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


public class UserRecordDTO {
	private int recordNum;
	private int userNum;
	@DateTimeFormat(pattern = "hh:mm:ss")
	private Date startTime;
	@DateTimeFormat(pattern = "hh:mm:ss")
	private Date endTime;
	@DateTimeFormat(pattern = "hh:mm:ss")
	private Date totalTime;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date useDate;
	
	public int getRecordNum() {
		return recordNum;
	}
	public void setRecordNum(int recordNum) {
		this.recordNum = recordNum;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public Date getTotalTime() {
		return totalTime;
	}
	public void setTotalTime(Date totalTime) {
		this.totalTime = totalTime;
	}
	public Date getUseDate() {
		return useDate;
	}
	public void setUseDate(Date useDate) {
		this.useDate = useDate;
	}
	@Override
	public String toString() {
		return "UserRecordDTO [recordNum=" + recordNum + ", userNum=" + userNum + ", startTime=" + startTime
				+ ", endTime=" + endTime + ", totalTime=" + totalTime + ", useDate=" + useDate + "]";
	}


}
