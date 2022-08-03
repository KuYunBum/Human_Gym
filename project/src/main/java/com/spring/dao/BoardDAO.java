package com.spring.dao;

import java.util.List;

import com.spring.vo.PageMaker;
import com.spring.dto.BoardDTO;

public interface BoardDAO {
	
	public void insert(BoardDTO dto) throws Exception;
	
	public BoardDTO detail(Integer bno) throws Exception;
	
	public void update(BoardDTO dto) throws Exception;
	
	public void delete(Integer bno) throws Exception;
	
//	public List<BoardDTO> select() throws Exception;
	
	public void viewcnt(Integer bno) throws Exception;
	
	public List<BoardDTO> listSearch(PageMaker pm) throws Exception;
	  
	public int listSearchCount(PageMaker pm) throws Exception;
	
}
