package com.swempire.web.board.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.swempire.web.board.dao.LoginDAO;
import com.swempire.web.board.model.LoginVO;

@Service
public class LoginService{
	
	@Inject
	private LoginDAO loginDAO;
	
	@Inject
	private HttpServletResponse response;
	
	@Inject
	private HttpServletRequest request;

	public LoginVO loginSelect(LoginVO loginVO)throws Exception {			
		return loginDAO.loginSelect(loginVO);
}
	
	
	public Cookie loginCookie(LoginVO loginVO) throws Exception{
		
		
		
		Cookie cookie = new Cookie("user_check",loginVO.getId());
		String checked = loginVO.getChecked();
		
		System.out.println(cookie.getValue());
		if(checked == "true") {
			response.addCookie(cookie);
			
			
		} else {
			 cookie.setMaxAge(0);
			 response.addCookie(cookie);
			 
			
		}
		
		return cookie;
	}

}
