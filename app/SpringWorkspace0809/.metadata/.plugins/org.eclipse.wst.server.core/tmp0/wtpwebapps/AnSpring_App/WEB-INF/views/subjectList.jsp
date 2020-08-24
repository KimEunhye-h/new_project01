<%@page import="com.csslect.app.dto.SubjectDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%		
	Gson gson = new Gson();
	String json = gson.toJson((ArrayList<SubjectDTO>)request.getAttribute("subjectList"));
	
	out.println(json);	
    
%>