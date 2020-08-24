package com.csslect.app.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.csslect.app.command.ACommand;
import com.csslect.app.command.NoticeAddCommand;
import com.csslect.app.command.NoticeListCommand;

@Controller
public class NoticeController {
	ACommand command;
	//공지글 리스트
	@RequestMapping(value="/NoticeList", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anSelect(HttpServletRequest req, Model model){
		System.out.println("NoticeList()");
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		String name = (String) req.getParameter("name");
		String title = (String) req.getParameter("title");
		String content = (String) req.getParameter("content");
		String today = (String) req.getParameter("today");

		
		System.out.println(title);
		System.out.println(name);
		System.out.println(content);
		System.out.println(today);
		
		model.addAttribute("title", title);
		model.addAttribute("name", name);
		model.addAttribute("content", content);
		model.addAttribute("today", today);

		
		command = new NoticeListCommand();
		command.execute(model);
		
		return "/NoticeList";
	}
	//공지글쓰기
	@RequestMapping(value="/NoticeAdd", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anInsertMulti(HttpServletRequest req, Model model){
		System.out.println("NoticeAdd()");	
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 		
		
		String title = (String) req.getParameter("title");
		String name = (String) req.getParameter("name");
		String content = (String) req.getParameter("content");
		String today = (String) req.getParameter("today");
		
		System.out.println(title);
		System.out.println(name);
		System.out.println(content);
		System.out.println(today);
		
		model.addAttribute("title", title);
		model.addAttribute("name", name);
		model.addAttribute("content", content);	
		model.addAttribute("today", today);	
		
		command = new NoticeAddCommand();
		command.execute(model);
		
		return "NoticeAdd";
	}
}
