package com.csslect.app.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.csslect.app.command.ACommand;
import com.csslect.app.command.ItemDeleteMultiCommand;
import com.csslect.app.command.ItemInsertMultiCommand;
import com.csslect.app.command.ItemSelectMultiCommand;
import com.csslect.app.command.SubjectAddCommand;
import com.csslect.app.command.SubjectDayTotalCommand;
import com.csslect.app.command.SubjectDdayCommand;
import com.csslect.app.command.SubjectDeleteCommand;
import com.csslect.app.command.SubjectListCommand;

@Controller
public class SubjectController {
	ACommand command;
	
	//메인 과목 삭제
	@RequestMapping(value="/SubjectDelete", method = {RequestMethod.GET, RequestMethod.POST})
	public String anDeleteMulti(HttpServletRequest req, Model model){
		System.out.println("SubjectDelete()");		
		String name = (String) req.getParameter("name");
		String subject = (String) req.getParameter("subject");
		
		model.addAttribute("name", req.getParameter("name"));		
		model.addAttribute("subject", req.getParameter("subject"));		
				
		System.out.println((String)req.getParameter("subject")+"의 "+(String)req.getParameter("name"));
	
		
		command = new SubjectDeleteCommand();
		command.execute(model);	
		return "subjectDelete";
		
	}
	
	//메인 과목 리사이클러뷰 목록
	@RequestMapping(value="/SubjectList", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anSelectMulti(HttpServletRequest req, Model model){
		System.out.println("SubjectList()");
		
		String name = (String) req.getParameter("name");
		model.addAttribute("name", name);
		command = new SubjectListCommand();
		command.execute(model);
		
		return "subjectList";
	}
	
	//메인에 로그인한 사람의 하루 총 공부시간
		@RequestMapping(value="/SubjectDayTotal", method = {RequestMethod.GET, RequestMethod.POST}  )
		public String subjectDayTotal(HttpServletRequest req, Model model){
			System.out.println("SubjectDayTotal()");
			
			String name = (String) req.getParameter("name");
			model.addAttribute("name", name);
			command = new SubjectDayTotalCommand();
			command.execute(model);
			
			return "subjectDayTotal";
		}
	
	//메인 과목 추가
	@RequestMapping(value="/SubjectAdd", produces="text/html; charset=utf-8", method = {RequestMethod.GET, RequestMethod.POST}  )
				//이름
	public String SubjectAdd(HttpServletRequest req, Model model){
		System.out.println("SubjectAdd()");
		
		try {
			req.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		//받는 파라미터 값
		String name = (String) req.getParameter("name");
		String subject = (String) req.getParameter("subject");
		String subjectTime = (String) req.getParameter("subjectTime");
		String today = (String) req.getParameter("today");
		
		System.out.println(name);
		System.out.println(subject);
		System.out.println(subjectTime);
		System.out.println(today);
		
		//모델에 해당값을 넣기
		model.addAttribute("name", name);
		model.addAttribute("subject", subject);
		model.addAttribute("subjectTime", subjectTime);
		model.addAttribute("today", today);
		System.out.println("값들어감");
		//컴온으로 넘어가서 dao호출후 DB연결 , 리턴값받음
		command = new SubjectAddCommand(); //Command 이름변경
		command.execute(model);
		//받은 리턴값을 리턴
		return "subjectAdd";
		
	}
	//메인에서 Dday가져오기
	
	@RequestMapping(value="/Subject_Dday", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String subject_Dday(HttpServletRequest req, Model model){
		System.out.println("subject_Dday()");
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		
		command = new SubjectDdayCommand();
		command.execute(model);
		
		return "subjectDday";
	}
	
	
	
	//민선 D-Day민선 D-Day민선 D-Day민선 D-Day민선 D-Day민선 D-Day민선 D-Day민선 D-Day민선 D-Day
	
	//d-day추가
	@RequestMapping(value="/ItemInsertMulti", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String ItemInsertMulti(HttpServletRequest req, Model model){
		System.out.println("ItemInsertMulti()");			
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		String name = (String) req.getParameter("name");
		String title = (String) req.getParameter("title");
		String pickerdate = (String) req.getParameter("pickerdate");
		String d_day = (String) req.getParameter("d_day");
		
		System.out.println(title);
		System.out.println(pickerdate);
		System.out.println(d_day);
		
		model.addAttribute("name", name);
		model.addAttribute("title", title);
		model.addAttribute("pickerdate", pickerdate);
		model.addAttribute("d_day", d_day);			
			
		command = new ItemInsertMultiCommand();
		command.execute(model);
		
		return "itemInsert";
	}
	
	//d-day 불러오기
	@RequestMapping(value="/ItemSelectMulti", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String ItemSelectMulti(HttpServletRequest req, Model model){
		System.out.println("ItemSelectMulti()");
		
		model.addAttribute("name", req.getParameter("name"));	
		System.out.println("가져온 이름"+req.getParameter("name"));
		command = new ItemSelectMultiCommand();
		command.execute(model);
		
		return "ItemSelectMulti";
	}
	
	//d-day 삭제
	@RequestMapping(value="/ItemDeleteMulti", method = {RequestMethod.GET, RequestMethod.POST})
	public String ItemDeleteMulti(HttpServletRequest req, Model model){
		System.out.println("ItemDeleteMulti()");	
		
		model.addAttribute("title", req.getParameter("title"));		
				
		System.out.println((String)req.getParameter("title"));
		
		
		command = new ItemDeleteMultiCommand();
		command.execute(model);	
		return "ItemDeleteMulti";
	}
	
}
