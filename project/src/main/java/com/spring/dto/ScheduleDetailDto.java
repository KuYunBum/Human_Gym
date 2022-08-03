package com.spring.dto;

public class ScheduleDetailDto {
	private int scNum;
	private int userNum;
	private String year;
	private String month;
	private String day;
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

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getSchedul_detail() {
		return schedule;
	}

	public void setSchedul_detail(String schedul_detail) {
		this.schedule = schedul_detail;
	}

	public ScheduleDetailDto(int scNum, int userNum, String year, String month, String day, String schedule) {
		super();
		this.scNum = scNum;
		this.userNum = userNum;
		this.year = year;
		this.month = month;
		this.day = day;
		this.schedule = schedule;
	}

	@Override
	public String toString() {
		return "ScheduleDetailDto [scNum=" + scNum + ", userNum=" + userNum + ", year=" + year + ", month=" + month
				+ ", day=" + day + ", schedul_detail=" + schedule + "]";
	}

}
