package com.csslect.app.command;

import java.util.ArrayList;

import org.springframework.ui.Model;
import com.csslect.app.dao.FriendDAO;
import com.csslect.app.dto.StudyDTO;

public class FriendListCommand implements ACommand {

	@Override
	public void execute(Model model) {		
		String name = (String)model.asMap().get("name");	
		
		FriendDAO adao = new FriendDAO();
		ArrayList<StudyDTO> adtos = adao.FriendList(name);	
		
		
		model.addAttribute("friendList", adtos); 
		
	}

}
