package com.spring.dao;

import java.util.List;

import com.spring.dto.ExerciseChartDTO;
import com.spring.dto.InbodyDTO;
import com.spring.dto.RecordDTO;
import com.spring.dto.RoutineDTO;

public interface MyPageDAO {
	
	//인바디
	public void inbodyInsert(InbodyDTO dto) throws Exception;
	
	public InbodyDTO inbodyDetail(int userNum) throws Exception;
	
	public void inbodyUpdate(InbodyDTO dto) throws Exception;
	
	//운동기록
	public void recordInsert(RecordDTO dto) throws Exception;
	
	public void recordUpdate(RecordDTO dto) throws Exception;
	
	public void recordDelete(int userNum) throws Exception;
	
	public RecordDTO recordDetail(RecordDTO dto) throws Exception;
	
	public List<RecordDTO> recordList(int userNum) throws Exception;

	public List<ExerciseChartDTO> chartData(int userNum) throws Exception;
	
	public void chartInsert(ExerciseChartDTO dto) throws Exception;
	
//	public List<UserRecordDTO> listCriteria(PageMaker pm) throws Exception;
//	  
//	public int listCount(PageMaker pm) throws Exception;
	
	
	//루틴	
	public List<RoutineDTO> routineList(int userNum) throws Exception;
	
	public void routineInsert(RoutineDTO dto) throws Exception;
	
	public List<RoutineDTO> routineDelete(int routineNum) throws Exception;
	
	public void routineUpdate(RoutineDTO dto) throws Exception;
	
	public RoutineDTO routineDetail(int routineNum) throws Exception;
	
}
