package com.csslect.app.command;

import java.util.ArrayList;

import org.springframework.ui.Model;
import com.csslect.app.dao.MemberListDAO;
import com.csslect.app.dto.MemberListDTO;

public class MemberSelectMultiCommand implements ACommand{
	
	@Override
	public void execute(Model model) {
		MemberListDAO dao = new MemberListDAO();
		ArrayList<MemberListDTO> list = dao.MemberSelectMulti();
		
		model.addAttribute("MemberSelectMulti", list );
	}

}
