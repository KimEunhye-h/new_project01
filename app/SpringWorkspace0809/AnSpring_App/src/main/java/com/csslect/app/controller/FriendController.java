package com.csslect.app.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.csslect.app.command.ACommand;
import com.csslect.app.command.FriendAddCommand;
import com.csslect.app.command.FriendAddInsertCommand;
import com.csslect.app.command.FriendListCommand;
import com.csslect.app.command.FriendListDeleteCommand;

@Controller
public class FriendController {
	ACommand command;
	
	//模备格废
	@RequestMapping(value="/FriendList", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anLogin(HttpServletRequest req, Model model){
		System.out.println("FriendList()");
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		String name = (String) req.getParameter("name");
		
		System.out.println(name);
		
		model.addAttribute("name", name);
		
		command = new FriendListCommand();
		command.execute(model);
		
		return "friendList";
	}
	
	//模备 眠啊 府胶飘
	@RequestMapping(value="/FriendAdd", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anSelectMulti(HttpServletRequest req, Model model){
		System.out.println("FriendAdd()");
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		
		String name = (String) req.getParameter("name");
		

		
		
		System.out.println(name);
		
		
		model.addAttribute("name", name);

		
		command = new FriendAddCommand();
		command.execute(model);
		
		return "/friendAdd";
	}
	
	//模备 眠啊 
	@RequestMapping(value="/FriendAddInsert", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anJoin(HttpServletRequest req, Model model){
		System.out.println("FriendAddInsert()");
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		String user_name = (String) req.getParameter("user_name");
		String name = (String) req.getParameter("name");
		String email = (String) req.getParameter("email");
		String job = (String) req.getParameter("job");
		
		System.out.println(user_name);
		System.out.println(name);
		System.out.println(email);
		System.out.println(job);
		
		model.addAttribute("user_name", user_name);
		model.addAttribute("name", name);
		model.addAttribute("email", email);
		model.addAttribute("job", job);
		
		command = new FriendAddInsertCommand();
		command.execute(model);
		
		return "friendAddInsert";
	}
	//模备 昏力
	@RequestMapping(value="/FriendListDelete", method = {RequestMethod.GET, RequestMethod.POST})
	public String anDeleteMulti(HttpServletRequest req, Model model){
		System.out.println("FriendListDelete()");		
		
		model.addAttribute("friendName", req.getParameter("friendName"));		
		model.addAttribute("name", req.getParameter("name"));	
		
		System.out.println((String)req.getParameter("name"));
		command = new FriendListDeleteCommand();
		command.execute(model);	
		return "friendListDelete";
	}
}
