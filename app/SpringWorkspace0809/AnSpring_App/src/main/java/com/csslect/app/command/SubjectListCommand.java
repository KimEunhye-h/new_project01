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
		//DTO�̸�����      dao �޼ҵ� �̸� �Ķ���� ����
		ArrayList<SubjectDTO> subjectList = dao.subjectList(name);
		//��Ʈ�ѷ��� �������� ��
		model.addAttribute("subjectList",subjectList);
	}

	
}
