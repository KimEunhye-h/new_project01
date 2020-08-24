package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.SubjectDAO;
import com.csslect.app.dto.DdayItemDTO;

public class SubjectDdayCommand implements ACommand {

	@Override
	public void execute(Model model) {
		SubjectDAO adao = new SubjectDAO();
		DdayItemDTO adto = adao.subjectDday();
		
		model.addAttribute("subjectDday", adto); 
	}

}
