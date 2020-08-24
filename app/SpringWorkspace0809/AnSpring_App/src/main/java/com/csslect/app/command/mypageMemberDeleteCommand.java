package com.csslect.app.command;

import org.springframework.ui.Model;


import com.csslect.app.dao.ChangeNameDAO;


public class mypageMemberDeleteCommand implements ACommand{	
	
	@Override
	public void execute(Model model) {
		String name = (String)model.asMap().get("name");
		ChangeNameDAO dao = new ChangeNameDAO();
		dao.memberDelete(name);		
			
	}	 

}
