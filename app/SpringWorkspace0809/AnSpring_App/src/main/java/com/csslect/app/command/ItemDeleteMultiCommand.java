package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.Dday_ItemDAO;

public class ItemDeleteMultiCommand implements ACommand{

	@Override
	public void execute(Model model) {
		String title = (String) model.asMap().get("title");
		
		Dday_ItemDAO dao = new Dday_ItemDAO();
		int state = dao.ItemDeleteMulti(title);
		
		model.addAttribute("ItemDeleteMulti", String.valueOf(state));
		//dao.ItemDeleteMulti(title);
	}

}
