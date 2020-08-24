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

	//메인 과목추가
	public int subjectAdd(String name,String subject, String subjectTime, String today) {
		System.out.println("DAO넘어옴");
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		int state = -100;
		
		try {
			System.out.println("try들어옴");
			connection = dataSource.getConnection();
			System.out.println("연결됨");
			String query = "insert into study(name,subject,time,today) " + 
			               "values('"+name+"','" + subject + "', '" + subjectTime + "', '" + today + "')";
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
	//메인 리사이블러뷰 목록보기
	public ArrayList<SubjectDTO> subjectList(String name1) {
		ArrayList<SubjectDTO> subjectList = new ArrayList<SubjectDTO>();
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;		
		
		try {
			connection = dataSource.getConnection();
			String query = "select name,subject, time, today "					
							+ " from study where today=to_char(sysdate,'yy/mm/dd') and name='"+name1+"' and not subject='" + "과목없음" +"'" 
							+ " order by subject desc";
			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();
			
			while (resultSet.next()) {
				String name = resultSet.getString("name");
				String subject = resultSet.getString("subject");
				String subjectTime = resultSet.getString("time");
				String today = resultSet.getString("today");
				System.out.println("제발!!"+subject);
				SubjectDTO dto = new SubjectDTO(name,subject,subjectTime,today);
				subjectList.add(dto);			
			}	
			
			System.out.println("subjectList크기" + subjectList.size());
			
		} catch (Exception e) {
			
			System.out.println(e.getMessage()+"에러");
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
	//메인 과목 삭제
	public int anDeleteMulti(String name1,String subject) {
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
		
		int state = -1;

		try {
			connection = dataSource.getConnection();
			String query = "delete from study where subject='"+subject+"' and name='"+name1+"'";
			System.out.println("쿼리실행후");
			System.out.println(subject);

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
	
	//메인에서 Dday값 가져오기
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
	//메인 로그인한 사람의 하루 총 공부시간
	public SubjectDayTotalDTO subjectDayTotal(String name1) {
		SubjectDayTotalDTO dto = null;
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;		
		
		try {
			connection = dataSource.getConnection();
			System.out.println("DAOㄲ지 넘어옴");
			String query ="select name,\r\n" + 
					"trim(to_char(h+floor((m+floor(s/60))/60),'00')) || ':'\r\n" + 
					"|| trim(to_char(mod(m+floor(s/60),60),'00'))  || ':'\r\n" + 
					"|| trim(to_char(mod(s,60),'00')) total \r\n" + 
					"from (select name,sum(substr(time, 1,2)) h, sum(substr(time, 4,2)) m\r\n" + 
					",sum( substr(time, 7,2)) s  from study \r\n" + 
					"where name='"+name1+"' and today=to_char(sysdate,'yy/mm/dd')\r\n" + 
					"GROUP by name) s";
			prepareStatement = connection.prepareStatement(query);
			System.out.println("쿼리후");
			resultSet = prepareStatement.executeQuery();
			
			System.out.println("리절트후");
			
			if (resultSet.next()) {
				String name = resultSet.getString("name");
				System.out.println("네임읽음"+name);
				String time = resultSet.getString("total");
				System.out.println("타임읽음"+time);
				dto = new SubjectDayTotalDTO(name, time);			
				
			}else {
				String name="결과없음";
				String time="00:00:00";
				System.out.println("네임읽음"+name+"타임읽음"+time);
				dto=new SubjectDayTotalDTO(name, time);
				
			}
			
//			if(!resultSet.next()) {
//				String name="결과없음";
//				String time="00:00:00";
//				System.out.println("네임읽음"+name+"타임읽음"+time);
//				dto=new SubjectDayTotalDTO(name, time);
//			}
//			
//			while (resultSet.next()) {
//				
//				String name = resultSet.getString("name");
//				System.out.println("네임읽음"+name);
//				String time = resultSet.getString("total");
//				System.out.println("타임읽음"+time);
//				dto = new SubjectDayTotalDTO(name, time);			
//			}	
			
			
		} catch (Exception e) {
			System.out.println(e.getMessage()+"에러111");
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
