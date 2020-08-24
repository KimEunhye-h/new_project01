package com.csslect.app.command;
import org.springframework.ui.Model;

import com.csslect.app.dao.LoginSignUpDAO;
import com.csslect.app.dto.MembersDTO;

public class LoginCommand implements ACommand{

	@Override
	public void execute(Model model) {		
		String email = (String)model.asMap().get("email");
		String pw = (String)model.asMap().get("pw");	
		
		LoginSignUpDAO adao = new LoginSignUpDAO();
		MembersDTO adto = adao.Login(email, pw);
		
		model.addAttribute("Login_Info", adto); 
		
	}
	
}
