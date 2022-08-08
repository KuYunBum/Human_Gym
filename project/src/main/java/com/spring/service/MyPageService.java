package com.spring.service;

import java.util.List;

import com.spring.dto.BoardDTO;
import com.spring.dto.ExerciseChartDTO;
import com.spring.dto.InbodyDTO;
import com.spring.dto.RoutineDTO;
import com.spring.dto.UserRecordDTO;

public interface MyPageService {
	
	//인바디
	public void inbodyInsert(InbodyDTO dto) throws Exception;
	
	public InbodyDTO inbodyDetail(int userNum) throws Exception;
	
	public void inbodyUpdate(InbodyDTO dto) throws Exception;
	
	//운동기록
	public void recordInsert(UserRecordDTO dto) throws Exception;
	
	public void recordUpdate(UserRecordDTO dto) throws Exception;
	
	public void recordDelete(int userNum) throws Exception;
	
	public List<UserRecordDTO> recordList(int userNum) throws Exception;
	
	public List<ExerciseChartDTO> chartData(int userNum) throws Exception;
	
	public void chartInsert(ExerciseChartDTO dto) throws Exception;
	
//	public List<UserRecordDTO> listCriteria(PageMaker pm) throws Exception;
//	  
//	public int listCount(PageMaker pm) throws Exception;
	
	//루틴
	public void routineInsert(RoutineDTO dto) throws Exception;
	
	public List<RoutineDTO> routineList(int userNum) throws Exception;
	
	public List<RoutineDTO> routineDelete(int routineNum) throws Exception;
	
	public void routineUpdate(RoutineDTO dto) throws Exception;
	
	public RoutineDTO routineDetail(int routineNum) throws Exception;
}
