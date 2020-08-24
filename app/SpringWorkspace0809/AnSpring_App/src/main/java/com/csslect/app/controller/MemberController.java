package com.csslect.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.csslect.app.command.ACommand;
import com.csslect.app.command.MemberDeleteMultiCommand;
import com.csslect.app.command.MemberSelectMultiCommand;

@Controller
public class MemberController {
	ACommand command;
	
	//리스트 불러오기
		@RequestMapping(value="/AdminMemberListSelect", method = {RequestMethod.GET, RequestMethod.POST}  )
		public String MemberSelectMulti(HttpServletRequest req, Model model){
			System.out.println("MemberSelectMulti()");
			
			command = new MemberSelectMultiCommand();
			command.execute(model);
			
			return "MemberSelectMulti";
		}
		
	//리스트 삭제
		@RequestMapping(value="/AdminMemberListDelete", method = {RequestMethod.GET, RequestMethod.POST})
		public String MemberDeleteMulti(HttpServletRequest req, Model model){
			System.out.println("MemberDeleteMulti()");	
			
			model.addAttribute("name", req.getParameter("name"));		
					
			System.out.println((String)req.getParameter("name"));
			
			
			command = new MemberDeleteMultiCommand();
			command.execute(model);	
			return "ItemDeleteMulti";
		}	

}
