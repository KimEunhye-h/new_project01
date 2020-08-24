package com.csslect.app.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.csslect.app.command.ACommand;
import com.csslect.app.command.tmSelectCommand;
import com.csslect.app.command.tmUpdateCommand;

@Controller
public class TimeController {
	
	ACommand command;
	//�����ġ ȭ�� �ε��� �ð���������
	@RequestMapping(value="/tmSelect", method = {RequestMethod.GET, RequestMethod.POST} )
	public String tmSelect (HttpServletRequest req, Model model) {
		String name = (String) req.getParameter("name");		
		String subject = (String) req.getParameter("subject");		
		
		System.out.println("tmSelect() ");
		System.out.println("subject: " + subject);
		
		model.addAttribute("name", name);
		model.addAttribute("subject", subject);
		
		command = new tmSelectCommand();
		command.execute(model);
		
		
		return "subjectSelectDTO";
	}
	
	////�����ġ ������ �ð������ϱ�
	@RequestMapping(value="/tmUpdate", method = {RequestMethod.GET, RequestMethod.POST})
	public void tmUpdate(HttpServletRequest req, Model model){
		System.out.println("tmUpdate");
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		
		String name = (String) req.getParameter("name");		
		String subject = (String) req.getParameter("subject");		
		String subjectTime = (String) req.getParameter("subjectTime");	
		
		System.out.println("subject : " + subject);	
		System.out.println("subjectTime : " + subjectTime);	

		model.addAttribute("name", name);
		model.addAttribute("subject", subject);
		model.addAttribute("subjectTime", subjectTime);
		
		command = new tmUpdateCommand();
		command.execute(model);		
		
	}

	//�����ġ ������ insert�ϱ�
//	@RequestMapping(value="/tmJoin", method = {RequestMethod.GET, RequestMethod.POST}  )
//	public String tmJoin(HttpServletRequest req, Model model){
//		System.out.println("tmJoin()");
//		
//		try {
//			req.setCharacterEncoding("UTF-8");
//		} catch (UnsupportedEncodingException e) {
//			e.printStackTrace();
//		} 		
//		
//		String subject = (String) req.getParameter("subject");
//		String subjectTime = (String) req.getParameter("subjectTime");
//		String today = (String) req.getParameter("today");
//	
//		
//		System.out.println(subject);
//		System.out.println(subjectTime);
//		System.out.println(today);
//		
//		
//		model.addAttribute("subject", subject);
//		model.addAttribute("subjectTime", subjectTime);
//		model.addAttribute("today", today);
//		
//		
//		command = new TJoinCommand();	//���ڴ�
//		command.execute(model);			//�ѱ�°�
//		
//		return "tmJoin";
//	}

}
