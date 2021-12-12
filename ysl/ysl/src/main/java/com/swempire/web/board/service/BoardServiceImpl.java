package com.swempire.web.board.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.swempire.web.board.dao.BoardDAO;
import com.swempire.web.board.model.BoardVO;
import com.swempire.web.error.controller.NotFoundException;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDAO boardDAO;

	@Override
	public List<BoardVO> getBoardList() throws Exception {

		return boardDAO.getBoardList();
	}

	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {

		boardDAO.insertBoard(boardVO);

	}
	
	@Override
	public BoardVO getBoardContent(int bid) throws Exception{

		try {
			BoardVO boardVO = new BoardVO();

			boardDAO.updateViewCnt(bid);

			boardVO = boardDAO.getBoardContent(bid);
			
			return boardVO;
			
		} catch (RuntimeException e) {
			
			throw new NotFoundException();
			
		}
		
	}

	@Override
	public void deleteBoard(int bid) throws Exception {
		 boardDAO.deleteBoard(bid);
		
	}

	@Override
	public void updateBoard(BoardVO boardVO) throws Exception {
		boardDAO.updateBoard(boardVO);
	}
}
