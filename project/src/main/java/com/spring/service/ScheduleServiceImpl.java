package com.spring.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dto.ScheduleDto;
import com.spring.dao.ScheduleDao;

@Service
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ScheduleDto> read(int userNum) throws Exception {
		ScheduleDao dao = sqlSession.getMapper(ScheduleDao.class);
		List<ScheduleDto> dtos = dao.read(userNum);
		return dtos;
	}

	@Override
	public void create(ScheduleDto sd) throws Exception {
		ScheduleDao dao = sqlSession.getMapper(ScheduleDao.class);
		dao.create(sd);
	}

	@Override
	public List<ScheduleDto> userRead() throws Exception {
		ScheduleDao dao = sqlSession.getMapper(ScheduleDao.class);
		List<ScheduleDto> dtos = dao.userRead();
		return dtos;
	}

	@Override
	public ScheduleDto readSchedule(int scNum) throws Exception {
		ScheduleDao dao = sqlSession.getMapper(ScheduleDao.class);
		ScheduleDto dto = dao.readSchedule(scNum);
		return dto;
	}

	@Override
	public void updateSchedule(ScheduleDto dto) throws Exception {
		ScheduleDao dao = sqlSession.getMapper(ScheduleDao.class);
		dao.updateSchedule(dto);
	}

	@Override
	public void deleteSchedule(ScheduleDto dto) throws Exception {
		ScheduleDao dao = sqlSession.getMapper(ScheduleDao.class);
		dao.deleteSchedule(dto);
	}
}
