package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.TMDAO;

public class tmUpdateCommand implements ACommand {
	
	@Override
	public void execute(Model model) {
		String name = (String)model.asMap().get("name");
		String subject = (String)model.asMap().get("subject");
		String subjectTime = (String)model.asMap().get("subjectTime");
		
		System.out.println("subject : " + subject);	
		System.out.println("subjectTime : " + subjectTime);	
		
		TMDAO dao = new TMDAO();
		
		dao.tmUpdate(name,subject, subjectTime);
		
		
	}	 

}
