package com.csslect.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.csslect.app.dto.MembersDTO;
import com.csslect.app.dto.StudyDTO;

public class FriendDAO {
	DataSource dataSource;

	public FriendDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:/comp/env/ateam");
			/* dataSource = (DataSource) context.lookup("java:/comp/env/CSS"); */
		} catch (NamingException e) {
			e.getMessage();
		}

	}

	// 친구목록 리스트
	public ArrayList<StudyDTO> FriendList(String namein) {

		ArrayList<StudyDTO> adtos = new ArrayList<StudyDTO>();
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();
			String query = "select name,\r\n" + 
					"trim(to_char(h+floor((m+floor(s/60))/60),'00')) || ':'\r\n" + 
					"|| trim(to_char(mod(m+floor(s/60),60),'00'))  || ':'\r\n" + 
					"|| trim(to_char(mod(s,60),'00')) total \r\n" + 
					"from (select name,sum(substr(time, 1,2)) h, sum(substr(time, 4,2)) m\r\n" + 
					",sum( substr(time, 7,2)) s  from study \r\n" + 
					"where name in (select name from friend where user_name='"+namein+"')\r\n" + 
					"GROUP by name) s";
			System.out.println("쿼리후");
			prepareStatement = connection.prepareStatement(query);
			System.out.println("쿼리읽은후");
			resultSet = prepareStatement.executeQuery();
			System.out.println("리절트셋 후");
			while (resultSet.next()) {
				String name = resultSet.getString("name");
				
				String time = resultSet.getString("total");
				

				System.out.println("StudyDTO[i] name : " + name);
				
				System.out.println("StudyDTO[i] time : " + time);
				

				adtos.add(new StudyDTO(name, time));
			}

			// System.out.println("MembersDTO[0] size : " + adtos.size());

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("a :" + e.getMessage());
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

	// 친구 추가 리스트
	public ArrayList<MembersDTO> FriendAdd(String namein) {

		ArrayList<MembersDTO> adtos = new ArrayList<MembersDTO>();
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();
			String query = "select * "					
					+ " from members " 
					+ " where name not in ((select name from friend where user_name='"+namein+"')) and not name='"+namein+"'";
			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();

			while (resultSet.next()) {
				String email = resultSet.getString("email");
				String name = resultSet.getString("name");
				String pw = resultSet.getString("pw");
				String job = resultSet.getString("job");
				String join_date = resultSet.getString("join_date");
				String admin = resultSet.getString("admin");

				MembersDTO adto = new MembersDTO(email, name, pw, job,join_date,admin);
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

	// 친구 추가 저장
	public int friendAddInsert(String user_name, String name, String email, String job) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		int state = -100;

		try {
			connection = dataSource.getConnection();
			String query = "insert into friend(user_name, name, email, job) " + 
		               "values('" + user_name + "', '" + name + "', '" + email + "', '" + 
				        			job + "' )";
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
	
	//친구목록 리스트 삭제
	public int friendListDelete(String friendName,String name) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		int state = -1;

		try {
			connection = dataSource.getConnection();
			String query = "delete from friend where user_name='"+name+"' and name='"+friendName+"'" ;
			
			System.out.println(friendName);
			System.out.println(name);

			prepareStatement = connection.prepareStatement(query);
			state = prepareStatement.executeUpdate();

			if (state > 0) {
				System.out.println("삭제성공");
			} else {
				System.out.println("삭제실패");
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
			}
		}

		return state;

	}

}
