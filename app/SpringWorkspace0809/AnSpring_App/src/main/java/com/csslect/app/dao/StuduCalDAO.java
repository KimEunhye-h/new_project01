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

import com.csslect.app.dto.MonthTotalDTO;
import com.csslect.app.dto.StudyCalDTO;
import com.csslect.app.dto.StudyCalDTO2;
import com.csslect.app.dto.StudyCalInitDTO;

public class StuduCalDAO {
	DataSource dataSource;

	public StuduCalDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:/comp/env/ateam");
			/* dataSource = (DataSource) context.lookup("java:/comp/env/CSS"); */
		} catch (NamingException e) {
			e.getMessage();
		}
	}
	
	// 달력 초기화
	public ArrayList<StudyCalInitDTO> studyCalSelectMultiInit(String namein, String regTodayin) {
		System.out.println("studyCalSelectMulti_init()");

		ArrayList<StudyCalInitDTO> list = new ArrayList<StudyCalInitDTO>();
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		try {

			/*
			 * SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd");
			 * 
			 * Date to_regToday = transFormat.parse(regToday);
			 */
			connection = dataSource.getConnection();

			String query = "";

			if (namein.length() > 0) {
				query = "select name, time, subject, today " + " from study where not subject='"+"과목없음"+"' and name ='" + namein + "'";
				System.out.println("query : " + query);
			}

			if (regTodayin.length() > 0) {
				String regToday_tmp = regTodayin.substring(2, 10);
				System.out.println("query : " + regToday_tmp);

				query = "select name, time, subject, today " + " from study where not subject='"+"과목없음"+"' and today ='" + regToday_tmp + "'";
				System.out.println("query : " + query);
			}

			// System.out.println("query : " + query);

			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();

			while (resultSet.next()) {

				String name = resultSet.getString("name");
				String time = resultSet.getString("time");
				String subject = resultSet.getString("subject");
				String today = resultSet.getString("today");

				System.out.println("name" + name + ", time" + time + ", subject" + subject + ", today" + today);

				StudyCalInitDTO dto = new StudyCalInitDTO(subject, time, name, today);
				list.add(dto);
			}

			System.out.println("adtos크기" + list.size());

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
		return list;
	}

	// 하루과목별 시간 조회
	public ArrayList<StudyCalDTO> studyCalSelectMulti(String name, String today) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		ArrayList<StudyCalDTO> list = new ArrayList<StudyCalDTO>();
		System.out.println(name+"23232323"+today);
		try {
			connection = dataSource.getConnection();

			String query = "SELECT subject, trim(to_char(h, '00')) ||':'|| trim(to_char(m, '00')) ||':'|| trim(to_char(s, '00')) total " + 
					"from (select subject, sum(substr(time, 1,2)) h , sum(substr(time, 4,2)) m ," + 
					" sum(substr(time, 7,2)) s from study where name='"+name+"' and today='"+today+"' and not subject='"+"과목없음"+"'" + 
					" group by subject)";

			System.out.println("query : " + query);

			prepareStatement = connection.prepareStatement(query);
			System.out.println("1 " );
			resultSet = prepareStatement.executeQuery();
			System.out.println("2 " );
			
			while (resultSet.next()) {
				System.out.println("3 " );

				String total = resultSet.getString("total");
				String subject = resultSet.getString("subject");
				System.out.println(subject + " " + total);

				list.add(new StudyCalDTO(subject, total));
			}
			
			
			System.out.println("4" );

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
		return list;
	}

	// 오늘하루총시간조회
	public String studyCalSelectMulti2(String name, String today) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
		String total = "";

		try {
			connection = dataSource.getConnection();

			String query = "select " + "trim(to_char(h+floor((m+floor(s/60))/60),'00'))  || ':'"
					+ "|| trim(to_char(mod(m+floor(s/60),60),'00'))  || ':'" + "|| trim(to_char(mod(s,60),'00')) total "
					+ "from (select sum(substr(time, 1,2)) h, sum(substr(time, 4,2)) m "
					+ ",sum(substr(time, 7,2)) s from study " + "where name='" + name + "' and today ='" + today
					+ "')  s";

			System.out.println("query : " + query);

			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();

			while (resultSet.next()) {

				total = resultSet.getString("total");
				System.out.println("total시간은 " + total);

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

		return total;
	}

	// 한달 총 시간조회
	public String studyCalSelectMonthTotal(String name, String today) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
		String total = "";

		try {
			connection = dataSource.getConnection();

			String query = "select " + "trim(to_char(h+floor((m+floor(s/60))/60),'00'))  || ':'"
					+ "|| trim(to_char(mod(m+floor(s/60),60),'00'))  || ':'" + "|| trim(to_char(mod(s,60),'00')) total "
					+ "from (select sum(substr(time, 1,2)) h, sum(substr(time, 4,2)) m "
					+ ",sum(substr(time, 7,2)) s from study " + "where name='" + name + "' and today like '%/" + today
					+ "/%')  s";

			System.out.println("query : " + query);

			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();

			while (resultSet.next()) {

				total = resultSet.getString("total");
				System.out.println("total시간은 " + total);

				/*
				 * name = resultSet.getString("name"); subject = resultSet.getString("subject");
				 * time = resultSet.getString("time"); today = resultSet.getString("today");
				 */

				/*
				 * System.out.println( "name" + name ); System.out.println( "subject" + subject
				 * ); System.out.println( "time" + time ); System.out.println( "today" + today
				 * );
				 */

				/*
				 * StudyCalDTO2 dto = new StudyCalDTO2(name, subject, time, today);
				 * list.add(dto);
				 */
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

		return total;
	}

	//한달최고기록
	public String studyCalSelectMonthBest(String name, String today) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
		String total = "";

		try {
			connection = dataSource.getConnection();

			String query = "select max(total) total from" + 
					"(select (substr(time, 1,2)) ||':'|| (substr(time, 4,2)) ||':'||" + 
					"(substr(time, 7,2)) total from study where name='" + name + "' and today like '%/"+today+"/%')";

			System.out.println("query : " + query);

			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();

			while (resultSet.next()) {

				total = resultSet.getString("total");
				System.out.println("total시간은 " + total);
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
		return total;
	}
	
	
	// 한달 과목별 총시간 조회
	public ArrayList<MonthTotalDTO> studyCalSelectMonthTotal2(String name, String today) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		ArrayList<MonthTotalDTO> totalList = new ArrayList<MonthTotalDTO>();

		try {
			connection = dataSource.getConnection();

			String query = "SELECT subject, "
					+ "trim(to_char(h, '00'))||':'||trim(to_char(m, '00'))||':'||trim(to_char(s, '00')) total "
					+ "from(select subject, sum(substr(time, 1,2)) h , sum(substr(time, 4,2)) m , "
					+ "sum(substr(time, 7,2)) s from study where not subject='과목없음' and name='" + name + "' and today like '%/" + today + "/%'"
					+ "group by subject)";

			System.out.println("query : " + query);

			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();

			while (resultSet.next()) {

				String total = resultSet.getString("total");
				String subject = resultSet.getString("subject");
				System.out.println(subject + " " + total);

				totalList.add(new MonthTotalDTO(subject, total));
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

		return totalList;
	}

	// 주간 총 시간조회
	public String studyCalSelectWeekTotal(String name, String today) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
		String total = "";

		try {
			connection = dataSource.getConnection();

			String query = "select trim(to_char(h+floor((m+floor(s/60))/60),'00'))" + 
					"|| ':'|| trim(to_char(mod(m+floor(s/60),60),'00'))" + 
					"|| ':'|| trim(to_char(mod(s,60),'00'))" + 
					"total from (select sum(substr(time, 1,2)) h, sum(substr(time, 4,2)) m ," + 
					"sum(substr(time, 7,2)) s from study where name='"+name+"' and  (SELECT TO_CHAR(TO_DATE(today),'W') FROM DUAL)="+today+") s";

			System.out.println("query : " + query);

			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();

			while (resultSet.next()) {

				total = resultSet.getString("total");
				System.out.println("total시간은 " + total);
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

		return total;
	}

	// 주간 과목별 총시간 조회
	public ArrayList<MonthTotalDTO> studyCalSelectWeekTotal2(String name, String today) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		ArrayList<MonthTotalDTO> totalList = new ArrayList<MonthTotalDTO>();

		try {
			connection = dataSource.getConnection();

			String query = "SELECT subject, trim(to_char(h, '00'))||':'||trim(to_char(m, '00'))||':'||trim(to_char(s, '00')) total " + 
					"from(select subject, sum(substr(time, 1,2)) h , sum(substr(time, 4,2)) m , " + 
					"sum(substr(time, 7,2)) s from study where not subject='과목없음' and name='"+name+"' and (SELECT TO_CHAR(TO_DATE(today),'W') FROM DUAL)="+today+" " + 
					"group by subject)";

			System.out.println("query : " + query);

			prepareStatement = connection.prepareStatement(query);
			resultSet = prepareStatement.executeQuery();

			while (resultSet.next()) {

				String total = resultSet.getString("total");
				String subject = resultSet.getString("subject");
				System.out.println(subject + " " + total);

				totalList.add(new MonthTotalDTO(subject, total));
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

		return totalList;
	}
	
	//일주일최고기록
		public String studyCalSelectWeekBest(String name, String today) {

			Connection connection = null;
			PreparedStatement prepareStatement = null;
			ResultSet resultSet = null;
			String total = "";

			try {
				connection = dataSource.getConnection();

				String query = "select max(total) total from" + 
						"(select (substr(time, 1,2)) ||':'|| (substr(time, 4,2)) ||':'||" + 
						"(substr(time, 7,2)) total from study where name='" + name + "' and (SELECT TO_CHAR(TO_DATE(today),'W') FROM DUAL)="+today+") s";

				System.out.println("query : " + query);

				prepareStatement = connection.prepareStatement(query);
				resultSet = prepareStatement.executeQuery();

				while (resultSet.next()) {

					total = resultSet.getString("total");
					System.out.println("total시간은 " + total);
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
			return total;
		}
	

}// class
