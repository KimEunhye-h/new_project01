package com.csslect.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.csslect.app.dto.MembersDTO;

public class LoginSignUpDAO {
	DataSource dataSource;

	public LoginSignUpDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:/comp/env/ateam");
		} catch (NamingException e) {
			e.getMessage();
		}

	}
	
	 public int SignUpCheck(String namein) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;		
		
		int state = -1;
		System.out.println(namein);
		try {
			connection = dataSource.getConnection();
			String query = "select * from members where name = '"+namein+"'";
			/*
			 * String query = "select * " + " from members" + " where name = '" + namein +
			 * "' ";
			 */			
			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();
			if(resultSet.next()) {
				state = 1;
			}
//				if (state > 0) {
//					System.out.println("검색성공");				
//				} else {
//					System.out.println("검색실패");
//				}

		} catch (Exception e) {
			e.printStackTrace();
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
	
    public MembersDTO Login(String emailin, String passwdin) {

    	MembersDTO adto = null;
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;		
		System.out.println("dao로 넘어옴");
		try {
			connection = dataSource.getConnection();
			String query = "select * "					
							+ " from members" 
							+ " where email = '" + emailin 
							+ "' and pw = '" + passwdin + "' ";
			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();
			
			System.out.println("리셋후");
			while (resultSet.next()) {
				String email = resultSet.getString("email");
				String name = resultSet.getString("name");
				String pw = resultSet.getString("pw");
				String job = resultSet.getString("job"); 
				String admin = resultSet.getString("admin"); 
					
				adto = new MembersDTO(email, name, pw, job,admin);							
			}	
			
			System.out.println("MembersDTO name : " + adto.getName());
			
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

		return adto;

	}

	public int SignUpInsert(String email, String name, String pw, String job) {
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		int state = -100;
		
		try {
			connection = dataSource.getConnection();
			String query = "insert into members(email, name, pw,  job) " + 
			               "values('" + email + "', '" + name + "', '" + 
			               pw + "', '" + job + "' )";
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

		return state;
	}
    
    
    
    
    
}
