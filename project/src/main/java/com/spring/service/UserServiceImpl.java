package com.spring.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.UserDAO;
import com.spring.dto.UserDTO;


@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void userJoin(UserDTO dto) throws Exception {
		UserDAO dao = sqlSession.getMapper(UserDAO.class);
		dao.userJoin(dto);
	}

	@Override
	public UserDTO userLogin(UserDTO dto) throws Exception {
		UserDAO dao = sqlSession.getMapper(UserDAO.class);
		return dao.userLogin(dto);
	}
	
	@Override
	public UserDTO idCheck(String userID) throws Exception {
		UserDAO dao = sqlSession.getMapper(UserDAO.class);
		
		return dao.idCheck(userID);
	}

	@Override
	public List<UserDTO> userList() throws Exception {
		UserDAO dao = sqlSession.getMapper(UserDAO.class);
		List<UserDTO> dtos = dao.userList();
		return dtos;
	}

	@Override
	public void userUpdate(UserDTO dto) throws Exception {
		UserDAO dao = sqlSession.getMapper(UserDAO.class);
		dao.userUpdate(dto);
	}

	@Override
	public void userDelete(int userNum) throws Exception {
		UserDAO dao = sqlSession.getMapper(UserDAO.class);
		dao.userDelete(userNum);
	}

	@Override
	public UserDTO userDetail(int userNum) throws Exception {
		UserDAO dao = sqlSession.getMapper(UserDAO.class);
		return dao.userDetail(userNum);
	}

	@Override
	public UserDTO findAccount(UserDTO dto) throws Exception {
		UserDAO dao = sqlSession.getMapper(UserDAO.class);
		return dao.findAccount(dto);
	}

}
