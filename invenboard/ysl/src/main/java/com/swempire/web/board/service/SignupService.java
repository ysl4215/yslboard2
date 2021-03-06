package com.swempire.web.board.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.swempire.web.board.dao.SignupDAO;
import com.swempire.web.board.model.SignupVO;

@Service
public class SignupService {
	
	@Inject
	SignupDAO signupdao;
	
	public void signupInsert(SignupVO signupvo) {
		System.out.println(signupvo.getBirth());
		signupdao.signupInsert(signupvo);
	}
	
}
