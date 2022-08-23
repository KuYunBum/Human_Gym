package com.spring.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ContentServiceImpl implements ContentService{
	
	@Autowired
	private SqlSession sqlSession;

}
