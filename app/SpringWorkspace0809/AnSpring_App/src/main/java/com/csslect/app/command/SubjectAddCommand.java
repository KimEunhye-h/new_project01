package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.SubjectDAO;
import com.csslect.app.dto.MemberDTO;

public class SubjectAddCommand implements ACommand{
	
	@Override
	public void execute(Model model) {		
		//받는 값 수정
		String name = (String)model.asMap().get("name");
		String subject = (String)model.asMap().get("subject");
		String subjectTime = (String)model.asMap().get("subjectTime");	
		String today = (String)model.asMap().get("today");	
		
		SubjectDAO dao = new SubjectDAO();
		//DTO이름변경      dao 메소드 이름 파라미터 변경
		int state = dao.subjectAdd(name ,subject, subjectTime, today);
		//컨트롤러로 돌려보낼 값
		model.addAttribute("subjectAdd", String.valueOf(state));
		
	}
}
