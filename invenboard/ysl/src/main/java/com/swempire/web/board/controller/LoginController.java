package com.swempire.web.board.controller;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.swempire.web.board.model.LoginVO;
import com.swempire.web.board.model.SignupVO;
import com.swempire.web.board.service.LoginService;

@Controller
public class LoginController {

	@Inject
	private LoginService loginService;
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm(Model model,HttpSession session,LoginVO loginVO,
			HttpServletResponse response) throws Exception {
		session.removeAttribute("sessionLogin");
		/* System.out.println(session.getAttribute("sessionLogin")); */
		
		model.addAttribute("userVO", new SignupVO());
		return "login/login";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginSession(Model model, HttpServletRequest request, LoginVO loginVO
			,HttpServletResponse response, HttpSession session)
			throws Exception {
		
		loginService.loginSelect(loginVO);

		if (loginService.loginSelect(loginVO) == null) {

			
			session.setAttribute("sessionLogin", null);

			return "redirect:/login";
		} else {

			session.setAttribute("sessionLogin", loginService.loginSelect(loginVO));
			
			System.out.println(session.getAttribute("sessionLogin"));
			System.out.println(request.getSession());

			return "redirect:/main";
		}
		
		
	}
	
	



}
