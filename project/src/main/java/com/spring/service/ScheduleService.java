package com.spring.service;

import java.util.List;

import com.spring.dto.ScheduleDto;

public interface ScheduleService {
	public List<ScheduleDto> read(int userNum) throws Exception;

	public void create(ScheduleDto st) throws Exception;

	public List<ScheduleDto> userRead() throws Exception;

	public ScheduleDto readSchedule(int scNum) throws Exception;

	public void updateSchedule(ScheduleDto dto) throws Exception;

	public void deleteSchedule(ScheduleDto dto) throws Exception;

}
