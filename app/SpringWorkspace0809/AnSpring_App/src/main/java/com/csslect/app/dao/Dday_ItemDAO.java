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

import com.csslect.app.dto.DdayItemDTO;

public class Dday_ItemDAO {
	
	DataSource dataSource;
	
	public Dday_ItemDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:/comp/env/ateam");
			/*dataSource = (DataSource) context.lookup("java:/comp/env/CSS");*/
		} catch (NamingException e) {
			e.getMessage();
		}

	}

	//d-day�ҷ�����
	public ArrayList<DdayItemDTO> ItemSelectMulti(String name1) {
		
		ArrayList<DdayItemDTO> list = new ArrayList<DdayItemDTO>();
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;		
		try {
			connection = dataSource.getConnection();
			System.out.println(name1);
			String query = "select * from d_daylist where name='"+name1+"'"
							+ " order by pickerdate asc";
			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();
			
			while(resultSet.next()) {
				String name = resultSet.getString("name");
				String title = resultSet.getString("title");
				String pickerdate = resultSet.getString("pickerdate");
				String d_day = resultSet.getString("d_day");
				
				SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");

				String d_day_tmp = d_day.replace("��", "-").replace("��", "-").replace("��", "-");
				String pick_day_tmp = pickerdate.replace("��", "-").replace("��", "-").replace("��", "-");
				Date dday_to = transFormat.parse(d_day_tmp);
				Date pickday_to = transFormat.parse(pick_day_tmp);
				
				System.out.println(dday_to);
				System.out.println(pickday_to);
				
				// Date�� ��ȯ�� �� ��¥�� ����� �� �� ���ϰ����� long type ������ �ʱ�ȭ �ϰ� �ִ�.
		        // ������ -950400000. long type ���� return �ȴ�.
		        long calDate = pickday_to.getTime() - dday_to.getTime(); 
		        
		        // Date.getTime() �� �ش糯¥�� ��������1970�� 00:00:00 ���� �� �ʰ� �귶������ ��ȯ���ش�. 
		        // ���� 24*60*60*1000(�� �ð����� ���� ������) �� �����ָ� �ϼ��� ���´�.
		        long calDateDays = calDate / ( 24*60*60*1000); 
		 
		        calDateDays = Math.abs(calDateDays);
		        String diff_day = String.valueOf(calDateDays);
		        
		        System.out.println("�� ��¥�� ��¥ ����: "+calDateDays);
				
				
				DdayItemDTO dto = new DdayItemDTO(name,title, pickerdate, d_day, diff_day);
				list.add(dto);
			}
			System.out.println("dtosũ��" + list.size());
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
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
			}finally {
				
			}
		}	
		
		return list;
	}
	
	//d-day�߰�
	public int ItemInsertMulti(String name1,String title, String pickerdate, String d_day) {
		
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
				
		int state = -100;

		try {			
			// 
			connection = dataSource.getConnection();
			String query = "insert into d_daylist(name,title, pickerdate, d_day) " + 
		               "values('"+name1+"','" + title + "', '" + pickerdate + "', '" + d_day + "')";

			prepareStatement = connection.prepareStatement(query);
			state = prepareStatement.executeUpdate();
			
			if (state > 0) {
				System.out.println(state + "���Լ���");				
			} else {
				System.out.println(state + "���Խ���");
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

	//d-day����
	public int ItemDeleteMulti(String title) {
	
	Connection connection = null;
	PreparedStatement prepareStatement = null;
	ResultSet resultSet = null;
	
	int state = -1;

	try {
		connection = dataSource.getConnection();
		String query = "delete from d_daylist where title='"+title+"'";

		
		System.out.println(title);

		prepareStatement = connection.prepareStatement(query);
		state = prepareStatement.executeUpdate();

		if (state > 0) {
			System.out.println("��������");				
		} else {
			System.out.println("��������");
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
