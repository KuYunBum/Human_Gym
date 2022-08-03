package com.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.dto.ReplyDTO;

import com.spring.vo.PageMaker;

public interface ReplyDAO {

	  public List<ReplyDTO> list(Integer bno) throws Exception;

	  public void insert(ReplyDTO vo) throws Exception;

	  public void update(ReplyDTO vo) throws Exception;

	  public void delete(Integer rno) throws Exception;

	  public List<ReplyDTO> listPage(
	      @Param("bno") Integer bno, @Param("pm") PageMaker pm) throws Exception;

	  public int count(Integer bno) throws Exception;

	}





