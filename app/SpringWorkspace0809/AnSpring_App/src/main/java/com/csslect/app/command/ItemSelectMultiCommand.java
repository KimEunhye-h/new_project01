package com.csslect.app.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.csslect.app.dao.Dday_ItemDAO;
import com.csslect.app.dto.DdayItemDTO;

public class ItemSelectMultiCommand implements ACommand {

	@Override
	public void execute(Model model) {
		String name = (String)model.asMap().get("name");
		Dday_ItemDAO dao = new Dday_ItemDAO();
		ArrayList<DdayItemDTO> list = dao.ItemSelectMulti(name);
		
		model.addAttribute("ItemSelectMulti", list );
		
	}

}
