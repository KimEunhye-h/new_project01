package com.csslect.app.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.csslect.app.dto.TMDTO;

public class TMDAO {
	
	DataSource dataSource;
	
	public TMDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:/comp/env/ateam");
			/*dataSource = (DataSource) context.lookup("java:/comp/env/CSS");*/
		} catch (NamingException e) {
			e.getMessage();
		}

	}
	
//	
//	public int tmJoin(String subject, String subjectTime, String today) {
//
//		Connection connection = null;
//		PreparedStatement prepareStatement = null;
//		int state = -100;
//
//		try {
//			connection = dataSource.getConnection();
//			String query = "insert into testtime(subject, subjectTime, day) " + "values('" + subject + "', '"
//					+ subjectTime + "', '" + today + "')";
//			prepareStatement = connection.prepareStatement(query);
//			state = prepareStatement.executeUpdate();
//
//			if (state > 0) {
//				System.out.println(state + "삽입성공");
//			} else {
//				System.out.println(state + "삽입실패");
//			}
//
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//		} finally {
//			try {
//				if (prepareStatement != null) {
//					prepareStatement.close();
//				}
//				if (connection != null) {
//					connection.close();
//				}
//
//			} catch (Exception e) {
//				e.printStackTrace();
//			} finally {
//
//			}
//		}
//
//		return state;
//
//	}



	public TMDTO tmselect(String name1,String subject1) {

		TMDTO dto=new TMDTO();
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;		
		
		try {
			connection = dataSource.getConnection();
			String query = "select * from study where subject='"+subject1+"' and today=to_char(sysdate,'yy/mm/dd') and name='"+name1+"'";
			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();
			
			while (resultSet.next()) {
				String name = resultSet.getString("name");
				String subject = resultSet.getString("subject");
				String subjectTime = resultSet.getString("time");
				String today = resultSet.getString("today");

				dto = new TMDTO(name,subject,subjectTime,today);
				
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
			} finally {

			}
		}

		return dto;
	}

	//시간 업데이트
	public int tmUpdate(String name1,String subject, String subjectTime) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		int state = -1;

		try {
			connection = dataSource.getConnection();
			String query = "update study set "                       
	                   + " time = '" + subjectTime + "' "                
	                + " where subject = '"+subject+"' and today=to_char(sysdate,'yy/mm/dd') and name='"+name1+"'" ;
			prepareStatement = connection.prepareStatement(query);
			state = prepareStatement.executeUpdate();

			if (state > 0) {
				System.out.println("수정2성공: " + state);
				System.out.println("수정2성공");

			} else {
				System.out.println("수정2실패");
			}

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
			} finally {

			}
		}

		return state;
	}

}
