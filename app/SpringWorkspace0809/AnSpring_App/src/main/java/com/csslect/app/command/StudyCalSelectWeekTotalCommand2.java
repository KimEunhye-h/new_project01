package com.csslect.app.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.csslect.app.dao.StuduCalDAO;
import com.csslect.app.dto.MonthTotalDTO;
import com.csslect.app.dto.StudyCalDTO;
import com.csslect.app.dto.StudyCalDTO2;
//한달 과목별 총시간조회
public class StudyCalSelectWeekTotalCommand2 implements ACommand {
	@Override
	public void execute(Model model) {			
		String name = (String)model.asMap().get("name");
		String today = (String)model.asMap().get("today");
		
		System.out.println("name : " + name);
		System.out.println("today : " + today);

		
		StuduCalDAO dao = new StuduCalDAO();
		ArrayList<MonthTotalDTO> totalList = dao.studyCalSelectWeekTotal2(name, today);	
		
		System.out.println("total time : " + totalList.size());
				
		model.addAttribute("studyCalSelectWeekTotal2", totalList); 
		
	}
}
