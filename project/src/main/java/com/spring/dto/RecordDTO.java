package com.spring.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class RecordDTO {
	private int recordNum;
	private int userNum;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date useDate;
	private int startHour;
	private int startMinute;
	private int endHour;
	private int endMinute;
	private String playTime;
	
	public int getRecordNum() {
		return recordNum;
	}
	public void setRecordNum(int recordNum) {
		this.recordNum = recordNum;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNume) {
		this.userNum = userNume;
	}
	public Date getUseDate() {
		return useDate;
	}
	public void setUseDate(Date useDate) {
		this.useDate = useDate;
	}
	public int getStartHour() {
		return startHour;
	}
	public void setStartHour(int startHour) {
		this.startHour = startHour;
	}
	public int getStartMinute() {
		return startMinute;
	}
	public void setStartMinute(int startMinute) {
		this.startMinute = startMinute;
	}
	public int getEndHour() {
		return endHour;
	}
	public void setEndHour(int endHour) {
		this.endHour = endHour;
	}
	public int getEndMinute() {
		return endMinute;
	}
	public void setEndMinute(int endMinute) {
		this.endMinute = endMinute;
	}
	public String getPlayTime() {
		return playTime;
	}
	public void setPlayTime(String playTime) {
		this.playTime = playTime;
	}
	
	@Override
	public String toString() {
		return "RecordDTO [recordNum=" + recordNum + ", userNum=" + userNum + ", useDate=" + useDate + ", startHour="
				+ startHour + ", startMinute=" + startMinute + ", endHour=" + endHour + ", endMinute=" + endMinute + ", playTime=" + playTime
				+ "]";
	}
	
	
	
	

}
