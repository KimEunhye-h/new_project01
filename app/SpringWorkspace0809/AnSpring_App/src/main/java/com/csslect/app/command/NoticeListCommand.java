package com.csslect.app.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.csslect.app.dao.NoticeDAO;
import com.csslect.app.dto.NoticeDTO;

public class NoticeListCommand implements ACommand {

	@Override
	public void execute(Model model) {
		String name = (String)model.asMap().get("name");
		
		NoticeDAO adao = new NoticeDAO();
		ArrayList<NoticeDTO> adtos = adao.NoticeList(name);
		
		model.addAttribute("NoticeList", adtos); 		
	}
	
}
