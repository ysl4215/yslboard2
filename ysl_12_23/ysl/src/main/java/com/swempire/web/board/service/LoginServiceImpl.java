package com.swempire.web.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.swempire.web.board.dao.LoginDAO;
import com.swempire.web.board.model.LoginVO;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Inject
	private LoginDAO loginDAO;
	
	@Override
	public LoginVO loginSelect(LoginVO loginVO) throws Exception {
			
		
		
	return loginDAO.loginSelect(loginVO);
		
	}

}
