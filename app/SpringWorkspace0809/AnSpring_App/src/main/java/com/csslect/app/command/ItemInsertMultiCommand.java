package com.csslect.app.command;

import org.springframework.ui.Model;

import com.csslect.app.dao.Dday_ItemDAO;

public class ItemInsertMultiCommand implements ACommand{

	@Override
	public void execute(Model model) {
		String name = (String)model.asMap().get("name");
		String title = (String)model.asMap().get("title");
		String pickerdate = (String)model.asMap().get("pickerdate");
		String d_day = (String)model.asMap().get("d_day");
		
		Dday_ItemDAO dao = new Dday_ItemDAO();
		int state=dao.ItemInsertMulti(name,title, pickerdate, d_day);
		
		model.addAttribute("itemInsert", String.valueOf(state)); 
		
	}
}