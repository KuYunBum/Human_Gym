package com.spring.dto;

import java.util.Date;
import java.util.List;


public class RoutineDTO {
	
	private int routineNum;
	private int userNum;
	private String routineName;
	private String routineEx;
//	private List<RoutineDTO> routineEx;
	
	
	
//	public List<RoutineDTO> getRoutineEx() {
//		return routineEx;
//	}
//	public void setRoutineEx(List<RoutineDTO> routineEx) {
//		this.routineEx = routineEx;
//	}
	public int getRoutineNum() {
		return routineNum;
	}
	public void setRoutineNum(int routineNum) {
		this.routineNum = routineNum;
	}
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
	return "RoutineDTO [routineNum=" + routineNum + ", userNum=" + userNum + ", routineName=" + routineName
			+ ", routineEx=" + routineEx + "]";
}

	
}
