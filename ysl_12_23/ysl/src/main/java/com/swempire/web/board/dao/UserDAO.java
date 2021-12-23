package com.swempire.web.board.dao;

import java.util.List;

import com.swempire.web.board.model.UserVO;

public interface UserDAO {

	public List<UserVO> getUserList() throws Exception;

	public UserVO getUserInfo(String uid) throws Exception;

	public int insertUser(UserVO userVO) throws Exception;

	public int updateUser(UserVO userVO) throws Exception;

	public int deleteUser(String uid) throws Exception;
}
