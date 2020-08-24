package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.SubjectDAO;
import com.csslect.app.dto.SubjectDayTotalDTO;

public class SubjectDayTotalCommand implements ACommand{

	@Override
	public void execute(Model model) {
		//�޴� �� ����
		String name = (String)model.asMap().get("name");	
		
		SubjectDAO dao = new SubjectDAO();
		//DTO�̸�����      dao �޼ҵ� �̸� �Ķ���� ����
		SubjectDayTotalDTO dto = dao.subjectDayTotal(name);
		//��Ʈ�ѷ��� �������� ��
		model.addAttribute("subjectDayTotal", dto);
	}

}
