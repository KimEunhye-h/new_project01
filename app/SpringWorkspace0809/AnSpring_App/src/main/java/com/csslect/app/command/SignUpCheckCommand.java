package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.LoginSignUpDAO;
import com.csslect.app.dto.MembersDTO;

public class SignUpCheckCommand implements ACommand{

	@Override
	public void execute(Model model) {		
		String name = (String)model.asMap().get("name");	
		
		LoginSignUpDAO adao = new LoginSignUpDAO();
		
		int state =  adao.SignUpCheck(name);
		
		model.addAttribute("SignUpCheck", String.valueOf(state)); 
		
	}
	
}