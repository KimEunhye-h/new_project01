package com.csslect.app.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.csslect.app.command.ACommand;

import com.csslect.app.command.ChangeJobUpdateCommand;
import com.csslect.app.command.ChangeNameSelectCommand;
import com.csslect.app.command.ChangeNameUpdateCommand;
import com.csslect.app.command.mypageMemberDeleteCommand;

@Controller
public class MyPageController{
	ACommand command;
	//´Ð³ÛÁ¶È¸
	@RequestMapping(value="/changeNameSelect", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String ChangeNameSelect(HttpServletRequest req, Model model){
		System.out.println("ChangeNameSelect()");
			String name = (String) req.getParameter("name");
		//	}else if(type.equals("day")) {
			
			System.out.println("name: " + name);
			
			model.addAttribute("name", name);
			
			command = new ChangeNameSelectCommand();
			command.execute(model);
			
			return "changeNameSelect";
	}//ÀÌ¸§Á¶È¸
	
	//´Ð³Ûº¯°æ
	@RequestMapping(value="/changeNameUpdate", method = {RequestMethod.GET, RequestMethod.POST})
	public String ChangeNameUpdate(HttpServletRequest req, Model model){
		System.out.println("changeNameUpdate()");	
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		
		String name = (String) req.getParameter("name");		
		String oldName = (String) req.getParameter("oldName");	
		
		System.out.println("name : " + name);	
		System.out.println("oldName : " + oldName);	

		model.addAttribute("name", name);
		model.addAttribute("oldName", oldName);
		
		command = new ChangeNameUpdateCommand();
		command.execute(model);		
		return "changeNameUpdate";
	}
	//Á÷¾÷º¯°æ
	@RequestMapping(value="/changeJobUpdate", method = {RequestMethod.GET, RequestMethod.POST})
	public void changeJobUpdate(HttpServletRequest req, Model model){
		System.out.println("changeJobUpdate()");	
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		
		String job = (String) req.getParameter("job");		
		String name = (String) req.getParameter("name");	
		
		System.out.println("job : " + job);	
		System.out.println("name : " + name);	

		model.addAttribute("job", job);
		model.addAttribute("name", name);
		
		command = new ChangeJobUpdateCommand();
		command.execute(model);		
		
	}
	////È¸¿øÅ»Åð
	@RequestMapping(value="/mypageMemberDelete", method = {RequestMethod.GET, RequestMethod.POST})
	public void memberDelete(HttpServletRequest req, Model model){
		System.out.println("mypageMemberDelete()");		
		
		model.addAttribute("name", req.getParameter("name"));		
				
		System.out.println((String)req.getParameter("name"));
		
		command = new mypageMemberDeleteCommand();
		command.execute(model);	
	}
	
}
