package com.swempire.web.board.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.swempire.web.board.model.LoginVO;
import com.swempire.web.board.model.UserVO;
import com.swempire.web.board.service.LoginService;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

	@Inject
	private LoginService loginService;
	@Inject
	private HttpSession session;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm(Model model,HttpSession session) throws Exception {
		
		session.removeAttribute("sessionLogin");
		
		System.out.println(session.getAttribute("sessionLogin"));
		
		model.addAttribute("userVO", new UserVO());
		return "login/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginSession(Model model, HttpServletRequest request, LoginVO loginVO)
			throws Exception {
		
		String uid = request.getParameter("uid");
		String pwd = request.getParameter("pwd");

		loginVO.setPwd(pwd);
		loginVO.setUid(uid);

		loginService.loginSelect(loginVO);

		if (loginService.loginSelect(loginVO) == null) {

			
			session.setAttribute("sessionLogin", null);

			return "redirect:/login/login";
		} else {

			session.setAttribute("sessionLogin", loginService.loginSelect(loginVO));
			
			System.out.println(session.getAttribute("sessionLogin"));
			System.out.println(request.getSession());

			return "redirect:/board/getBoardList";
		}

	}
	
	@RequestMapping(value = "/signupForm", method = RequestMethod.GET)
	public String signupForm(Model model) throws Exception {

		model.addAttribute("userVO", new UserVO());

		return "login/signupForm";
	}

}