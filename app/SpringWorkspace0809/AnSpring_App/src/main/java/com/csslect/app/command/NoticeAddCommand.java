package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.NoticeDAO;

public class NoticeAddCommand implements ACommand {

	@Override
	public void execute(Model model) {
		String title = (String)model.asMap().get("title");
		String name = (String)model.asMap().get("name");
		String content = (String)model.asMap().get("content");			
		String today = (String)model.asMap().get("today");
		
		NoticeDAO adao = new NoticeDAO();
		
		
		int state = adao.noticeAdd(title, name, content, today);
		
		model.addAttribute("NoticeAdd", String.valueOf(state)); 
		
	}

}
