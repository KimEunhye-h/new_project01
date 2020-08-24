package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.ChangeNameDAO;

public class ChangeNameUpdateCommand implements ACommand{	
	
	@Override
	public void execute(Model model) {
		String name = (String)model.asMap().get("name");
		String oldName = (String)model.asMap().get("oldName");
		
		System.out.println("name1 : " + name);	
		System.out.println("oldName1 : " + oldName);	
		
		ChangeNameDAO dao = new ChangeNameDAO();
		
		int state=dao.changeNameUpdate(name, oldName);
		model.addAttribute("changeNameUpdate" , String.valueOf(state));
		
	}	 

}
