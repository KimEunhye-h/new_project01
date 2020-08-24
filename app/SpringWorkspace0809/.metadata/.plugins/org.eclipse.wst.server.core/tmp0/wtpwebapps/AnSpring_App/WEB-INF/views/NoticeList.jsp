<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.csslect.app.dto.NoticeDTO"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="java.sql.*, java.sql.Date, javax.sql.*, javax.naming.*, 
					java.util.*, java.io.PrintWriter" %>
<%		
	Gson gson = new Gson();
	String json = gson.toJson((ArrayList<NoticeDTO>)request.getAttribute("NoticeList"));
	
	out.println(json);	
%>