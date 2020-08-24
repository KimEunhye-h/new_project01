package com.csslect.app.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.csslect.app.dao.SubjectDAO;
import com.csslect.app.dto.SubjectDTO;

public class SubjectListCommand implements ACommand{

	@Override
	public void execute(Model model) {
		String name = (String)model.asMap().get("name");
		SubjectDAO dao = new SubjectDAO();
		//DTO이름변경      dao 메소드 이름 파라미터 변경
		ArrayList<SubjectDTO> subjectList = dao.subjectList(name);
		//컨트롤러로 돌려보낼 값
		model.addAttribute("subjectList",subjectList);
	}

	
}
