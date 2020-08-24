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
	
	//���� ���� ����
	@RequestMapping(value="/SubjectDelete", method = {RequestMethod.GET, RequestMethod.POST})
	public String anDeleteMulti(HttpServletRequest req, Model model){
		System.out.println("SubjectDelete()");		
		String name = (String) req.getParameter("name");
		String subject = (String) req.getParameter("subject");
		
		model.addAttribute("name", req.getParameter("name"));		
		model.addAttribute("subject", req.getParameter("subject"));		
				
		System.out.println((String)req.getParameter("subject")+"�� "+(String)req.getParameter("name"));
	
		
		command = new SubjectDeleteCommand();
		command.execute(model);	
		return "subjectDelete";
		
	}
	
	//���� ���� ������Ŭ���� ���
	@RequestMapping(value="/SubjectList", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anSelectMulti(HttpServletRequest req, Model model){
		System.out.println("SubjectList()");
		
		String name = (String) req.getParameter("name");
		model.addAttribute("name", name);
		command = new SubjectListCommand();
		command.execute(model);
		
		return "subjectList";
	}
	
	//���ο� �α����� ����� �Ϸ� �� ���νð�
		@RequestMapping(value="/SubjectDayTotal", method = {RequestMethod.GET, RequestMethod.POST}  )
		public String subjectDayTotal(HttpServletRequest req, Model model){
			System.out.println("SubjectDayTotal()");
			
			String name = (String) req.getParameter("name");
			model.addAttribute("name", name);
			command = new SubjectDayTotalCommand();
			command.execute(model);
			
			return "subjectDayTotal";
		}
	
	//���� ���� �߰�
	@RequestMapping(value="/SubjectAdd", produces="text/html; charset=utf-8", method = {RequestMethod.GET, RequestMethod.POST}  )
				//�̸�
	public String SubjectAdd(HttpServletRequest req, Model model){
		System.out.println("SubjectAdd()");
		
		try {
			req.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		//�޴� �Ķ���� ��
		String name = (String) req.getParameter("name");
		String subject = (String) req.getParameter("subject");
		String subjectTime = (String) req.getParameter("subjectTime");
		String today = (String) req.getParameter("today");
		
		System.out.println(name);
		System.out.println(subject);
		System.out.println(subjectTime);
		System.out.println(today);
		
		//�𵨿� �ش簪�� �ֱ�
		model.addAttribute("name", name);
		model.addAttribute("subject", subject);
		model.addAttribute("subjectTime", subjectTime);
		model.addAttribute("today", today);
		System.out.println("����");
		//�Ŀ����� �Ѿ�� daoȣ���� DB���� , ���ϰ�����
		command = new SubjectAddCommand(); //Command �̸�����
		command.execute(model);
		//���� ���ϰ��� ����
		return "subjectAdd";
		
	}
	//���ο��� Dday��������
	
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
	
	
	
	//�μ� D-Day�μ� D-Day�μ� D-Day�μ� D-Day�μ� D-Day�μ� D-Day�μ� D-Day�μ� D-Day�μ� D-Day
	
	//d-day�߰�
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
	
	//d-day �ҷ�����
	@RequestMapping(value="/ItemSelectMulti", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String ItemSelectMulti(HttpServletRequest req, Model model){
		System.out.println("ItemSelectMulti()");
		
		model.addAttribute("name", req.getParameter("name"));	
		System.out.println("������ �̸�"+req.getParameter("name"));
		command = new ItemSelectMultiCommand();
		command.execute(model);
		
		return "ItemSelectMulti";
	}
	
	//d-day ����
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
