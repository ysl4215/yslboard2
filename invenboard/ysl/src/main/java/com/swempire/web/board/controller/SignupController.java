package com.swempire.web.board.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.swempire.web.board.model.SignupVO;
import com.swempire.web.board.service.SignupService;

@Controller
public class SignupController {
	
	@Inject
	SignupService signupservice;
	
	@RequestMapping(value = "/signupForm", method = RequestMethod.GET)
	public String signupForm(Model model) throws Exception {

		model.addAttribute("userVO", new SignupVO());

		return "/login/signupForm";
	}
	
	@RequestMapping(value = "/signupForm", method = RequestMethod.POST)
	public String signupForm2(Model model, SignupVO signupvo, @RequestParam("id") String id,
			@RequestParam("pw") String pw, @RequestParam("name") String name,
			@RequestParam("yy") String yy, @RequestParam("mm") String mm,
			@RequestParam("dd") String dd, @RequestParam("gender") String gender,
			@RequestParam("email") String email, @RequestParam("phone") String phone) 
			throws Exception {
			
		signupvo.setId(id);
		signupvo.setPw(pw);
		signupvo.setName(name);
		signupvo.setBirth(yy+"-"+mm+"-"+dd);
		signupvo.setGender(gender);
		signupvo.setEmail(email);
		signupvo.setPhone(phone);
		signupservice.signupInsert(signupvo);
		
		
		return "login/login";
	}
}