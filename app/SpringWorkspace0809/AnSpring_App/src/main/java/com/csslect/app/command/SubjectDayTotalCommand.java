package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.SubjectDAO;
import com.csslect.app.dto.SubjectDayTotalDTO;

public class SubjectDayTotalCommand implements ACommand{

	@Override
	public void execute(Model model) {
		//받는 값 수정
		String name = (String)model.asMap().get("name");	
		
		SubjectDAO dao = new SubjectDAO();
		//DTO이름변경      dao 메소드 이름 파라미터 변경
		SubjectDayTotalDTO dto = dao.subjectDayTotal(name);
		//컨트롤러로 돌려보낼 값
		model.addAttribute("subjectDayTotal", dto);
	}

}
