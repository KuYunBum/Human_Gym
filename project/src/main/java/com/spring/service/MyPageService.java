package com.spring.service;

import java.util.List;

import com.spring.dto.ExerciseChartDTO;
import com.spring.dto.InbodyDTO;
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
	
//	public List<UserRecordDTO> listCriteria(PageMaker pm) throws Exception;
//	  
//	public int listCount(PageMaker pm) throws Exception;
	
	

}
