package com.csslect.app.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.csslect.app.dao.StuduCalDAO;

import com.csslect.app.dto.StudyCalDTO;
import com.csslect.app.dto.StudyCalDTO2;
//하루 총시간조회
public class studyCalSelectMultiCommand2 implements ACommand {
	@Override
	public void execute(Model model) {			
		String name = (String)model.asMap().get("name");
		String today = (String)model.asMap().get("today");
		
		System.out.println("name : " + name);
		System.out.println("today : " + today);

		
		StuduCalDAO dao = new StuduCalDAO();
		String total = dao.studyCalSelectMulti2(name, today);	
		
		System.out.println("total time : " + total);
				
		model.addAttribute("studyCalSelectMulti2", total); 
		
	}
}
