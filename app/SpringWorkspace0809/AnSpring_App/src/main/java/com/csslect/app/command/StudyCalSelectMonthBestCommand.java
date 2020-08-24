package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.StuduCalDAO;

public class StudyCalSelectMonthBestCommand implements ACommand {
	//한달중 최고기록 조회
	@Override
	public void execute(Model model) {			
		String name = (String)model.asMap().get("name");
		String today = (String)model.asMap().get("today");
		
		System.out.println("name : " + name);
		System.out.println("today : " + today);

		
		StuduCalDAO dao = new StuduCalDAO();
		String total = dao.studyCalSelectMonthBest(name, today);	
		
		System.out.println("total time : " + total);
				
		model.addAttribute("studyCalSelectMonthBest", total); 
		
	}
}
