package com.swempire.web.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.swempire.web.board.model.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{

	@Inject
	private SqlSession sqlSession;

	@Override
	public List<UserVO> getUserList() throws Exception {
		return sqlSession.selectList("com.swempire.web.board.userMapper.getUserList");
	}

	@Override
	public UserVO getUserInfo(String uid) throws Exception {
		return sqlSession.selectOne("com.swempire.web.board.userMapper.getUserInfo", uid);
	}

	@Override
	public int insertUser(UserVO userVO) throws Exception {
		return sqlSession.insert("com.swempire.web.board.userMapper.insertUser", userVO);
	}

	@Override
	public int updateUser(UserVO userVO) throws Exception {
		return sqlSession.update("com.swempire.web.board.userMapper.updateUser", userVO);
	}

	@Override public int deleteUser(String uid) throws Exception {
		
		return sqlSession.delete("com.swempire.web.board.userMapper.deleteUser", uid); }

	
}