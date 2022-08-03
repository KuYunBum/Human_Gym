package com.spring.dto;

public class ExerciseDTO {
	private String exID;
	private String exName;
	private String exPart;
	private String exDifficulty;
	private Boolean toolUse;
	public String getExID() {
		return exID;
	}
	public void setExID(String exID) {
		this.exID = exID;
	}
	public String getExName() {
		return exName;
	}
	public void setExName(String exName) {
		this.exName = exName;
	}
	public String getExPart() {
		return exPart;
	}
	public void setExPart(String exPart) {
		this.exPart = exPart;
	}
	public String getExDifficulty() {
		return exDifficulty;
	}
	public void setExDifficulty(String exDifficulty) {
		this.exDifficulty = exDifficulty;
	}
	public Boolean getToolUse() {
		return toolUse;
	}
	public void setToolUse(Boolean toolUse) {
		this.toolUse = toolUse;
	}
	@Override
	public String toString() {
		return "ExerciseDTO [exID=" + exID + ", exName=" + exName + ", exPart=" + exPart + ", exDifficulty="
				+ exDifficulty + ", toolUse=" + toolUse + "]";
	}
	
	
}
