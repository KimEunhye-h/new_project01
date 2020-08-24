package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.FriendDAO;

public class FriendAddInsertCommand implements ACommand{

	@Override
	public void execute(Model model) {	
		String user_name = (String)model.asMap().get("user_name");	
		String name = (String)model.asMap().get("name");
		String email = (String)model.asMap().get("email");
		String job = (String)model.asMap().get("job");
		
		FriendDAO adao = new FriendDAO();
		int state = adao.friendAddInsert(user_name, name, email, job);
		
		model.addAttribute("friendAddInsert", String.valueOf(state)); 
		
	}

}
