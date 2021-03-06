package com.swempire.web.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.swempire.web.board.model.LoginVO;

@Repository
public class LoginDAOImpl implements LoginDAO{
	
	@Inject
	private SqlSession sqlSession;
		
	@Override
	public LoginVO loginSelect(LoginVO loginVO) {
		
		return  sqlSession.selectOne("com.swempire.web.board.loginMapper.loginSelect", loginVO);
		
	}

}
