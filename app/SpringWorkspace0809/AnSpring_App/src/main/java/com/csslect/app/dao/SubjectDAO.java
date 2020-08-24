package com.csslect.app.dao;

import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.csslect.app.dto.DdayItemDTO;
import com.csslect.app.dto.SubjectDTO;
import com.csslect.app.dto.SubjectDayTotalDTO;

public class SubjectDAO {
	DataSource dataSource;
	
	public SubjectDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:/comp/env/ateam");
			/*dataSource = (DataSource) context.lookup("java:/comp/env/CSS");*/
		} catch (NamingException e) {
			e.getMessage();
		}

	}

	//���� �����߰�
	public int subjectAdd(String name,String subject, String subjectTime, String today) {
		System.out.println("DAO�Ѿ��");
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		int state = -100;
		
		try {
			System.out.println("try����");
			connection = dataSource.getConnection();
			System.out.println("�����");
			String query = "insert into study(name,subject,time,today) " + 
			               "values('"+name+"','" + subject + "', '" + subjectTime + "', '" + today + "')";
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
	//���� �����̺��� ��Ϻ���
	public ArrayList<SubjectDTO> subjectList(String name1) {
		ArrayList<SubjectDTO> subjectList = new ArrayList<SubjectDTO>();
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;		
		
		try {
			connection = dataSource.getConnection();
			String query = "select name,subject, time, today "					
							+ " from study where today=to_char(sysdate,'yy/mm/dd') and name='"+name1+"' and not subject='" + "�������" +"'" 
							+ " order by subject desc";
			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();
			
			while (resultSet.next()) {
				String name = resultSet.getString("name");
				String subject = resultSet.getString("subject");
				String subjectTime = resultSet.getString("time");
				String today = resultSet.getString("today");
				System.out.println("����!!"+subject);
				SubjectDTO dto = new SubjectDTO(name,subject,subjectTime,today);
				subjectList.add(dto);			
			}	
			
			System.out.println("subjectListũ��" + subjectList.size());
			
		} catch (Exception e) {
			
			System.out.println(e.getMessage()+"����");
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

		return subjectList;
	}
	//���� ���� ����
	public int anDeleteMulti(String name1,String subject) {
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
		
		int state = -1;

		try {
			connection = dataSource.getConnection();
			String query = "delete from study where subject='"+subject+"' and name='"+name1+"'";
			System.out.println("����������");
			System.out.println(subject);

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
	
	//���ο��� Dday�� ��������
	public DdayItemDTO subjectDday() {
		DdayItemDTO adto = null;
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;		
		
		try {
			connection = dataSource.getConnection();
			String query = "select * from d_daylist where pickerdate = (select min(pickerdate) from d_daylist) and title = (select min(title) from d_daylist)";
			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();
			
			while(resultSet.next()) {
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
				
				
		        adto = new DdayItemDTO(title, pickerdate, d_day, diff_day);
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

		return adto;
	}
	//���� �α����� ����� �Ϸ� �� ���νð�
	public SubjectDayTotalDTO subjectDayTotal(String name1) {
		SubjectDayTotalDTO dto = null;
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;		
		
		try {
			connection = dataSource.getConnection();
			System.out.println("DAO���� �Ѿ��");
			String query ="select name,\r\n" + 
					"trim(to_char(h+floor((m+floor(s/60))/60),'00')) || ':'\r\n" + 
					"|| trim(to_char(mod(m+floor(s/60),60),'00'))  || ':'\r\n" + 
					"|| trim(to_char(mod(s,60),'00')) total \r\n" + 
					"from (select name,sum(substr(time, 1,2)) h, sum(substr(time, 4,2)) m\r\n" + 
					",sum( substr(time, 7,2)) s  from study \r\n" + 
					"where name='"+name1+"' and today=to_char(sysdate,'yy/mm/dd')\r\n" + 
					"GROUP by name) s";
			prepareStatement = connection.prepareStatement(query);
			System.out.println("������");
			resultSet = prepareStatement.executeQuery();
			
			System.out.println("����Ʈ��");
			
			if (resultSet.next()) {
				String name = resultSet.getString("name");
				System.out.println("��������"+name);
				String time = resultSet.getString("total");
				System.out.println("Ÿ������"+time);
				dto = new SubjectDayTotalDTO(name, time);			
				
			}else {
				String name="�������";
				String time="00:00:00";
				System.out.println("��������"+name+"Ÿ������"+time);
				dto=new SubjectDayTotalDTO(name, time);
				
			}
			
//			if(!resultSet.next()) {
//				String name="�������";
//				String time="00:00:00";
//				System.out.println("��������"+name+"Ÿ������"+time);
//				dto=new SubjectDayTotalDTO(name, time);
//			}
//			
//			while (resultSet.next()) {
//				
//				String name = resultSet.getString("name");
//				System.out.println("��������"+name);
//				String time = resultSet.getString("total");
//				System.out.println("Ÿ������"+time);
//				dto = new SubjectDayTotalDTO(name, time);			
//			}	
			
			
		} catch (Exception e) {
			System.out.println(e.getMessage()+"����111");
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
	
	

	
	
}
