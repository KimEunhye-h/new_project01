package com.csslect.app.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.csslect.app.dao.StuduCalDAO;
import com.csslect.app.dto.StudyCalDTO;
//하루 과목별시간
public class studyCalSelectMultiCommand implements ACommand {
	@Override
	public void execute(Model model) {			
		String name = (String)model.asMap().get("name");
		String today = (String)model.asMap().get("today");
		
		System.out.println("name : " + name);
		System.out.println("regToday : " + today);
		
		StuduCalDAO dao = new StuduCalDAO();
		ArrayList<StudyCalDTO> list = dao.studyCalSelectMulti(name, today);		
				
		System.out.println("total time : " + list.size());

		model.addAttribute("studyCalSelectMulti", list); 
		
	}
}
