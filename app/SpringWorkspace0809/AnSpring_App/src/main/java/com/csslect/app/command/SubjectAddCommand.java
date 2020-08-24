package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.SubjectDAO;
import com.csslect.app.dto.MemberDTO;

public class SubjectAddCommand implements ACommand{
	
	@Override
	public void execute(Model model) {		
		//�޴� �� ����
		String name = (String)model.asMap().get("name");
		String subject = (String)model.asMap().get("subject");
		String subjectTime = (String)model.asMap().get("subjectTime");	
		String today = (String)model.asMap().get("today");	
		
		SubjectDAO dao = new SubjectDAO();
		//DTO�̸�����      dao �޼ҵ� �̸� �Ķ���� ����
		int state = dao.subjectAdd(name ,subject, subjectTime, today);
		//��Ʈ�ѷ��� �������� ��
		model.addAttribute("subjectAdd", String.valueOf(state));
		
	}
}
