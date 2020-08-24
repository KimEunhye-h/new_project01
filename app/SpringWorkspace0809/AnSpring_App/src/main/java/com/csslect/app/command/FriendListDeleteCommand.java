package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.FriendDAO;

public class FriendListDeleteCommand implements ACommand{	
	
	@Override
	public void execute(Model model) {
		String friendName = (String)model.asMap().get("friendName");	
		String name = (String)model.asMap().get("name");	
		
		FriendDAO adao = new FriendDAO();
		
		int state=adao.friendListDelete(friendName,name);		
		model.addAttribute("friendListDelete", String.valueOf(state));
	}	 

}
