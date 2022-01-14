package com.swempire.web.board.service;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.swempire.web.board.dao.LoginDAO;
import com.swempire.web.board.model.LoginVO;

@Service
public class LoginService{
	
	@Inject
	private LoginDAO loginDAO;
	
	public LoginVO loginSelect(LoginVO loginVO)throws Exception {			
		return loginDAO.loginSelect(loginVO);
}
	
	


}
