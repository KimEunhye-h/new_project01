package com.csslect.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.csslect.app.command.ACommand;
import com.csslect.app.command.StudyCalSelectMonthBestCommand;
import com.csslect.app.command.StudyCalSelectMonthTotalCommand;
import com.csslect.app.command.StudyCalSelectMonthTotalCommand2;
import com.csslect.app.command.StudyCalSelectWeekBestCommand;
import com.csslect.app.command.StudyCalSelectWeekTotalCommand;
import com.csslect.app.command.StudyCalSelectWeekTotalCommand2;
import com.csslect.app.command.studyCalSelectMultiCommand;
import com.csslect.app.command.studyCalSelectMultiCommand2;
import com.csslect.app.command.studyCalSelectMultiInitCommand;

@Controller
public class StudyCalController {
	ACommand command;
	
	@RequestMapping(value="/studyCalSelectMultiInit", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String StudyCalSelectMultiInit(HttpServletRequest req, Model model){
		System.out.println("StudyCalSelectMultiInit()");
		
		String name="", regToday="";
		
		String type = (String) req.getParameter("type");
		if(type.equals("name")) {
			name = (String) req.getParameter("nameday");
		}else if(type.equals("day")) {
			regToday = (String) req.getParameter("nameday");
		}
		
		System.out.println("name : " + name);
		System.out.println("day : " + regToday);		
		
		model.addAttribute("name", name);
		model.addAttribute("regToday", regToday);		
		
		command = new studyCalSelectMultiInitCommand();
		command.execute(model);
		
		return "studyCalSelectMultiInit";
	}//
	
	//하루과목별시간
	@RequestMapping(value="/studyCalSelectMulti", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String StudyCalSelectMulti(HttpServletRequest req, Model model){
		System.out.println("StudyCalSelectMulti()");
		
		String name = (String) req.getParameter("name");
		String today = (String) req.getParameter("today");

		System.out.println("name: " + name);
		System.out.println("today: " + today);
		
		model.addAttribute("name", name);
		model.addAttribute("today", today);		
		
		command = new studyCalSelectMultiCommand();
		command.execute(model);
		
		return "studyCalSelectMulti";
	}//
	
	//하루 총시간
	@RequestMapping(value="/studyCalSelectMulti2", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String StudyCalSelectMulti2(HttpServletRequest req, Model model){
		System.out.println("StudyCalSelectMulti2()");

		
		String name = (String) req.getParameter("name");
		String today = (String) req.getParameter("today");


		
		System.out.println("name: " + name);
		
		model.addAttribute("name", name);
		model.addAttribute("today", today);
		
		command = new studyCalSelectMultiCommand2();
		command.execute(model);
		
		return "studyCalSelectMulti2";
	}//
	
	//한달 총시간
	@RequestMapping(value="/studyCalSelectMonthTotal", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String studyCalSelectMonthTotal(HttpServletRequest req, Model model){
		System.out.println("studyCalSelectMonthTotal()");

		
		String name = (String) req.getParameter("name");
		String today = (String) req.getParameter("today");


		
		System.out.println("name: " + name);
		System.out.println("today: " + today);
		
		model.addAttribute("name", name);
		model.addAttribute("today", today);
		
		command = new StudyCalSelectMonthTotalCommand();
		command.execute(model);
		
		return "studyCalSelectMonthTotal";
	}//
	
	//한달 중 최고기록 조회
	@RequestMapping(value="/studyCalSelectMonthBest", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String studyCalSelectMonthBest(HttpServletRequest req, Model model){
		System.out.println("studyCalSelectMonthBest()");

		
		String name = (String) req.getParameter("name");
		String today = (String) req.getParameter("today");


		
		System.out.println("name: " + name);
		System.out.println("today: " + today);
		
		model.addAttribute("name", name);
		model.addAttribute("today", today);
		
		command = new StudyCalSelectMonthBestCommand();
		command.execute(model);
		
		return "studyCalSelectMonthBest";
	}//
	
	//한달 과목별 총시간
	@RequestMapping(value="/studyCalSelectMonthTotal2", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String studyCalSelectMonthTotal2(HttpServletRequest req, Model model){
		System.out.println("studyCalSelectMonthTotal2()");

		String name = (String) req.getParameter("name");
		String today = (String) req.getParameter("today");

		System.out.println("name: " + name);
		System.out.println("today: " + today);
		
		model.addAttribute("name", name);
		model.addAttribute("today", today);
		
		command = new StudyCalSelectMonthTotalCommand2();
		command.execute(model);
		
		return "studyCalSelectMonthTotal2";
	}//
	
	//주간 총시간
		@RequestMapping(value="/studyCalSelectWeekTotal", method = {RequestMethod.GET, RequestMethod.POST}  )
		public String studyCalSelectWeekTotal(HttpServletRequest req, Model model){
			System.out.println("studyCalSelectWeekTotal()");

			
			String name = (String) req.getParameter("name");
			String today = (String) req.getParameter("today");


			
			System.out.println("name: " + name);
			System.out.println("today: " + today);
			
			model.addAttribute("name", name);
			model.addAttribute("today", today);
			
			command = new StudyCalSelectWeekTotalCommand();
			command.execute(model);
			
			return "studyCalSelectWeekTotal";
		}//
		
		//주간 과목별 총시간
		@RequestMapping(value="/studyCalSelectWeekTotal2", method = {RequestMethod.GET, RequestMethod.POST}  )
		public String studyCalSelectWeekTotal2(HttpServletRequest req, Model model){
			System.out.println("studyCalSelectWeekTotal2()");

			String name = (String) req.getParameter("name");
			String today = (String) req.getParameter("today");

			System.out.println("name: " + name);
			System.out.println("today: " + today);
			
			model.addAttribute("name", name);
			model.addAttribute("today", today);
			
			command = new StudyCalSelectWeekTotalCommand2();
			command.execute(model);
			
			return "studyCalSelectWeekTotal2";
		}//
		
		//일주일 중 최고기록 조회
		@RequestMapping(value="/studyCalSelectWeekBest", method = {RequestMethod.GET, RequestMethod.POST}  )
		public String studyCalSelectWeekBest(HttpServletRequest req, Model model){
			System.out.println("studyCalSelectWeekBest()");

			
			String name = (String) req.getParameter("name");
			String today = (String) req.getParameter("today");


			
			System.out.println("name: " + name);
			System.out.println("today: " + today);
			
			model.addAttribute("name", name);
			model.addAttribute("today", today);
			
			command = new StudyCalSelectWeekBestCommand();
			command.execute(model);
			
			return "studyCalSelectWeekBest";
		}//
}
