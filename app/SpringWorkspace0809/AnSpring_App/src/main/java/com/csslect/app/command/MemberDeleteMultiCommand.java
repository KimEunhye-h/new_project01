package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.MemberListDAO;

public class MemberDeleteMultiCommand implements ACommand {

	@Override
	public void execute(Model model) {
		String name = (String)model.asMap().get("name");
		
		MemberListDAO dao = new MemberListDAO();
		int state = dao.MemberDeleteMulti(name);
		
		model.addAttribute("MemberDeleteMulti", String.valueOf(state));
		//dao.MemberDeleteMulti(name);
	}
	

}
