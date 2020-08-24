package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.TMDAO;
import com.csslect.app.dto.TMDTO;

public class tmSelectCommand implements ACommand {

	@Override
	public void execute(Model model) {
		String name = (String)model.asMap().get("name");
		String subject = (String)model.asMap().get("subject");
		
		TMDAO dao = new TMDAO();
		TMDTO dto = dao.tmselect(name,subject);
		
		model.addAttribute("subjectSelectDTO", dto); 
		
		System.out.println(dto.getSubject()+","+dto.getSubjectTime());
	}

}
