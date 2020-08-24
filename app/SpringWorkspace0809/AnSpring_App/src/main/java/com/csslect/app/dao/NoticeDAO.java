package com.csslect.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.csslect.app.dto.NoticeDTO;

public class NoticeDAO {
	DataSource dataSource;

	public NoticeDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:/comp/env/ateam");
		} catch (NamingException e) {
			e.getMessage();
		}

	}
	//공지글리스트
	public ArrayList<NoticeDTO> NoticeList(String namein) {		
		
		ArrayList<NoticeDTO> adtos = new ArrayList<NoticeDTO>();
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;		
		
		try {
			connection = dataSource.getConnection();
			String query = "select * "					
							+ " from notice order by today desc";
			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();
			
			while (resultSet.next()) {
				String name = resultSet.getString("name");
				String title = resultSet.getString("title");
				String content = resultSet.getString("content");
				String today = resultSet.getString("today"); 

				System.out.println(name);
				System.out.println(title);
				System.out.println(content);
				System.out.println(today);
				NoticeDTO adto = new NoticeDTO(name, title, content, today);
				adtos.add(adto);			
			}	
			
			System.out.println("adtos크기" + adtos.size());
			
		} catch (Exception e) {
			
			System.out.println(e.getMessage());
		} finally {
			try {			
				
				if (resultSet != null) {
					resultSet.close();
				}
				if (prepareStatement != null) {
					prepareStatement.close();
				}
				if (connection != null) {
					connection.close();
				}	

			} catch (Exception e) {
				e.printStackTrace();
			} finally {

			}
		}

		return adtos;

	}
	
	//공지글 쓰기
	public int noticeAdd(String title, String name, String content, String today) {
		
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
				
		int state = -1;

		try {			
			// 
			connection = dataSource.getConnection();
			String query = "insert into notice(title, name, content, today) " + "values('" + title + "','" 
							+ name + "','" + content + "','" + today + "' )";

			prepareStatement = connection.prepareStatement(query);
			state = prepareStatement.executeUpdate();
			
			if (state > 0) {
				System.out.println(state + "삽입성공");				
			} else {
				System.out.println(state + "삽입실패");
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (prepareStatement != null) {
					prepareStatement.close();
				}
				if (connection != null) {
					connection.close();
				}

			} catch (Exception e) {
				e.printStackTrace();
			} 

		}

		return state;

	}
}
