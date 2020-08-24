package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.ChangeNameDAO;

public class ChangeJobUpdateCommand implements ACommand{	
	
	@Override
	public void execute(Model model) {
		String job = (String)model.asMap().get("job");
		String name = (String)model.asMap().get("name");
		
		System.out.println("job : " + job);	
		System.out.println("name : " + name);	
		
		ChangeNameDAO dao = new ChangeNameDAO();
		
		dao.changeJobUpdate(job, name);
		
		
	}	 

}
