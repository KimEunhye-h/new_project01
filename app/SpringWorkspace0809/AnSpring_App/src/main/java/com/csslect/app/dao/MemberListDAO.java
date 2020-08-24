package com.csslect.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.csslect.app.dto.MemberListDTO;

public class MemberListDAO {
	DataSource dataSource;
	
	public MemberListDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:/comp/env/ateam");
		} catch (NamingException e) {
			e.getMessage();
		}
	}
	
	//멤버리스트 불러오기
	public ArrayList<MemberListDTO> MemberSelectMulti(){
		
		ArrayList<MemberListDTO> list = new ArrayList<MemberListDTO>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			String query = "select email, name, join_date from members "
							+ " order by join_date asc";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				String email = resultSet.getString("email");
				String name = resultSet.getString("name");
				String join_date = resultSet.getString("join_date");
				
				MemberListDTO dto = new MemberListDTO(email, name, join_date);
				list.add(dto);
			}			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}	
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				
			}
		}		
		return list;		
	}
	
	//멤버리스트 삭제
	public int MemberDeleteMulti(String name) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		int state = -1;
		
		try {
			connection = dataSource.getConnection();
			String query = "delete from members where name='"+name+"'";

			
			System.out.println(name);

			preparedStatement = connection.prepareStatement(query);
			state = preparedStatement.executeUpdate();

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
				if (preparedStatement != null) {
					preparedStatement.close();
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
