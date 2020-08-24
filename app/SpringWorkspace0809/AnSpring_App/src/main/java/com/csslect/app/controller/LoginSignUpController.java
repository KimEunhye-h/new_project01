package com.csslect.app.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.csslect.app.command.ACommand;
import com.csslect.app.command.LoginCommand;
import com.csslect.app.command.SignUpCheckCommand;
import com.csslect.app.command.SignUpCommand;

@Controller
public class LoginSignUpController {
	
	ACommand command;
	//로그인 정보 확인
	@RequestMapping(value="/LoginSelect", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anLogin(HttpServletRequest req, Model model){
		System.out.println("LoginSelect()");
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 		
		
		String email = (String) req.getParameter("email");
		String pw = (String) req.getParameter("pw");
		
		System.out.println(email);
		System.out.println(pw);
		
		model.addAttribute("email", email);
		model.addAttribute("pw", pw);
		
		command = new LoginCommand();
		command.execute(model);
		
		return "login_Info";
	}
	//회원가입
	@RequestMapping(value="/anJoin111", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anJoin(HttpServletRequest req, Model model){
		System.out.println("anJoin111()");
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
	
		String email = (String) req.getParameter("email");
		String pw = (String) req.getParameter("pw");
		String name = (String) req.getParameter("name");
		String job = (String) req.getParameter("job");
		
		System.out.println(email);
		System.out.println(name);
		System.out.println(pw);
		System.out.println(job);
		
		model.addAttribute("email", email);
		model.addAttribute("pw", pw);
		model.addAttribute("name", name);
		model.addAttribute("job", job);
		
		command = new SignUpCommand();
		command.execute(model);
		
		return "signUp_Info";
	}
	
	//회원가입 중복확인
	@RequestMapping(value="/SignUpCheck", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String SignUpCheck(HttpServletRequest req, Model model){
		System.out.println("SignUpCheck()");
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 		
		
		String name = (String) req.getParameter("name");
	
		
		System.out.println(name);

		
		model.addAttribute("name", name);
		
		command = new SignUpCheckCommand();
		command.execute(model);
		
		return "SignUpCheck";
	}
}
