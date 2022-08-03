package com.spring.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class RoutineDTO {
	
	
	private int userNum;
	private String routineName;
	private String routineEx;
	
	public String getRoutineName() {
		return routineName;
	}
	public void setRoutineName(String routineName) {
		this.routineName = routineName;
	}
	public String getRoutineEx() {
		return routineEx;
	}
	public void setRoutineEx(String routineEx) {
		this.routineEx = routineEx;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	
@Override
public String toString() {
	return "RoutineDTO [userNum=" + userNum + ", routineName=" + routineName + ", routineEx=" + routineEx + "]";
}

	
}
