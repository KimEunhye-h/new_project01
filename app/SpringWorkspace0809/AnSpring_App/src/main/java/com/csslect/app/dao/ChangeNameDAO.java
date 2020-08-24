package com.csslect.app.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.csslect.app.dto.ChangeNameSelectDTO;


public class ChangeNameDAO {
	DataSource dataSource;

	public ChangeNameDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:/comp/env/ateam");
			/* dataSource = (DataSource) context.lookup("java:/comp/env/CSS"); */
		} catch (NamingException e) {
			e.getMessage();
		}
	}

	// 이름조회
	public ChangeNameSelectDTO changeNameSelect(String namein) {

		// ArrayList<ChangeNameSelectDTO> list = new ArrayList<ChangeNameSelectDTO>();
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
		ChangeNameSelectDTO dto = null;
		try {
			connection = dataSource.getConnection();
			String query = "select * from members where name ='" + namein + "'";

			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();
			while (resultSet.next()) {

				String name = resultSet.getString("name");

				System.out.println("name" + name);

				dto = new ChangeNameSelectDTO(name);

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

	// 이름 변경
	public int changeNameUpdate(String name, String oldName) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		int state = -1;

		try {
			connection = dataSource.getConnection();
			String query = "update members set "                       
	                   + " name = '" + name + "' "                
	                + " where name = '"+oldName+"'" ;
			prepareStatement = connection.prepareStatement(query);
			state = prepareStatement.executeUpdate();

			if (state > 0) {
				System.out.println("수정성공 " + state);

			} else {
				System.out.println("수정실패");
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
	
	// 직업변경
	public int changeJobUpdate(String job, String name) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		int state = -1;

		try {
			connection = dataSource.getConnection();
			String query = "update members set "                       
	                   + " job = '" + job + "' "                
	                + " where name = '"+name+"'" ;
			prepareStatement = connection.prepareStatement(query);
			state = prepareStatement.executeUpdate();

			if (state > 0) {
				System.out.println("�닔�젙2�꽦怨�: " + state);
				System.out.println("�닔�젙2�꽦怨�");

			} else {
				System.out.println("�닔�젙2�떎�뙣");
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
		
	//회원탈퇴
	public int memberDelete(String name) {
		
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
		
		int state = -1;

		try {
			connection = dataSource.getConnection();
			String query = "delete from members where name = '"+name+"'";
			
			System.out.println(name);

			prepareStatement = connection.prepareStatement(query);
			state = prepareStatement.executeUpdate();

			if (state > 0) {
				System.out.println("성공");				
			} else {
				System.out.println("실패");
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
