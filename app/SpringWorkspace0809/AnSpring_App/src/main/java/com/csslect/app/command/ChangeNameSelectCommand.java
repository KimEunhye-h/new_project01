package com.csslect.app.command;
import org.springframework.ui.Model;

import com.csslect.app.dao.ChangeNameDAO;
import com.csslect.app.dto.ChangeNameSelectDTO;

public class ChangeNameSelectCommand implements ACommand {
	@Override
	public void execute(Model model) {			
		String name = (String)model.asMap().get("name");
		
		System.out.println("name : " + name);
		
		ChangeNameDAO dao = new ChangeNameDAO();
		ChangeNameSelectDTO dto =dao.changeNameSelect(name);		
				
		model.addAttribute("changeNameSelect", dto); 
		
	}
}
