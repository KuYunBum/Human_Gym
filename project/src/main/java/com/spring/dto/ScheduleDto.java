package com.spring.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ScheduleDto {
	private int scNum;
	private int userNum;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date day;
	private String schedule;

	public int getScNum() {
		return scNum;
	}

	public void setScNum(int scNum) {
		this.scNum = scNum;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public Date getDay() {
		return day;
	}

	public void setDay(Date day) {
		this.day = day;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	public ScheduleDto(int scNum, int userNum, Date day, String schedule) {
		super();
		this.scNum = scNum;
		this.userNum = userNum;
		this.day = day;
		this.schedule = schedule;
	}

	public ScheduleDto() {

	}

	@Override
	public String toString() {
		return "ScheduleDto [scNum=" + scNum + ", userNum=" + userNum + ", day=" + day + ", schedule=" + schedule + "]";
	}

}
