package com.swempire.web.board.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.swempire.web.board.model.SignupVO;

@Repository
public class SignupDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	public void signupInsert(SignupVO signupvo) {
		
		sqlSession.insert("com.swempire.web.board.signupMapper.signupInsert",signupvo);
	}
	
}
