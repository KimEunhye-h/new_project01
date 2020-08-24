package com.csslect.app.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.csslect.app.command.ACommand;
import com.csslect.app.dao.StuduCalDAO;
import com.csslect.app.dto.StudyCalInitDTO;

public class studyCalSelectMultiInitCommand implements ACommand {

	@Override
	public void execute(Model model) {
		String name = (String)model.asMap().get("name");
		String regToday = (String)model.asMap().get("regToday");
		
		System.out.println("name : " + name);
		System.out.println("regToday : " + regToday);
		
		StuduCalDAO dao = new StuduCalDAO();
		ArrayList<StudyCalInitDTO> adtos = dao.studyCalSelectMultiInit(name, regToday);		
				
		model.addAttribute("studyCalSelectMultiInit", adtos); 

	}

}
