package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.SubjectDAO;

public class SubjectDeleteCommand implements ACommand {

	@Override
	public void execute(Model model) {
		String name = (String)model.asMap().get("name");
		String subject = (String)model.asMap().get("subject");
		
		SubjectDAO dao = new SubjectDAO();
		int state = dao.anDeleteMulti(name,subject);		

		model.addAttribute("subjectDelete", String.valueOf(state));
			
	}

}
