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

	//d-day불러오기
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

				String d_day_tmp = d_day.replace("년", "-").replace("월", "-").replace("일", "-");
				String pick_day_tmp = pickerdate.replace("년", "-").replace("월", "-").replace("일", "-");
				Date dday_to = transFormat.parse(d_day_tmp);
				Date pickday_to = transFormat.parse(pick_day_tmp);
				
				System.out.println(dday_to);
				System.out.println(pickday_to);
				
				// Date로 변환된 두 날짜를 계산한 뒤 그 리턴값으로 long type 변수를 초기화 하고 있다.
		        // 연산결과 -950400000. long type 으로 return 된다.
		        long calDate = pickday_to.getTime() - dday_to.getTime(); 
		        
		        // Date.getTime() 은 해당날짜를 기준으로1970년 00:00:00 부터 몇 초가 흘렀는지를 반환해준다. 
		        // 이제 24*60*60*1000(각 시간값에 따른 차이점) 을 나눠주면 일수가 나온다.
		        long calDateDays = calDate / ( 24*60*60*1000); 
		 
		        calDateDays = Math.abs(calDateDays);
		        String diff_day = String.valueOf(calDateDays);
		        
		        System.out.println("두 날짜의 날짜 차이: "+calDateDays);
				
				
				DdayItemDTO dto = new DdayItemDTO(name,title, pickerdate, d_day, diff_day);
				list.add(dto);
			}
			System.out.println("dtos크기" + list.size());
			
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
	
	//d-day추가
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

	//d-day삭제
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
