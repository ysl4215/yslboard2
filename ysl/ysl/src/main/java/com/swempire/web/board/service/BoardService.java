package com.swempire.web.board.service;

import java.util.List;

import com.swempire.web.board.model.BoardVO;

public interface BoardService {
	
	public List<BoardVO> getBoardList() throws Exception;
	
	public void insertBoard(BoardVO boardVO) throws Exception;
	
	public BoardVO getBoardContent(int bid) throws Exception;
	
	public void deleteBoard(int bid) throws Exception;

	public void updateBoard(BoardVO boardVO) throws Exception;
}
