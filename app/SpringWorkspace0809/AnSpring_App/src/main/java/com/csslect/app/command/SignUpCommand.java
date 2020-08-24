package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.LoginSignUpDAO;

public class SignUpCommand implements ACommand{
	@Override
	public void execute(Model model) {		
		String email = (String)model.asMap().get("email");	
		String name = (String)model.asMap().get("name");
		String pw = (String)model.asMap().get("pw");
		String job = (String)model.asMap().get("job");
		
		LoginSignUpDAO adao = new LoginSignUpDAO();
		int state = adao.SignUpInsert(email, name, pw, job);
		
		model.addAttribute("signUp_Info", String.valueOf(state)); 
		
	}
}
