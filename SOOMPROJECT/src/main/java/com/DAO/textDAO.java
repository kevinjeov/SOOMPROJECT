package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.VO.textVO;

public class textDAO {
	
	// DAO (Data Access Object)
		// DB에 연결되는 기능들을 한 클래스파일에 모아서 구현(중복되는 최소화 / 보안)
		// 1. Connection 메소드 만들기
		// 2. Close 메소드 만들기
		// 3. 각 기능들에서 자주 사용하는 변수 멤버변수 만들기
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		int cnt;
		textVO vo = null;
	
	public void getConn() {
		try {
//			// 현재 memberDAO의 클래스파일을 기준으로 파일을 읽어오는 기능
//			InputStream in = getClass().getResourceAsStream("../../../../db.properties");
//			
//			// properties 파일 형식을 읽을 수 있는 객체
//			Properties p = new Properties();
//			// Properties 파일 형식으로 db.properties파일을 load함
//			p.load(in);
//			
//			Class.forName(p.getProperty("dbClass"));
//			String url = p.getProperty("dburl");
//			String dbid = p.getProperty("dbid");
//			String dbpw = p.getProperty("dbpw");
			
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@121.147.52.234:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			
			
			
			//DB에 관련된 정보를 properties파일로 관리하는 방법
			conn = DriverManager.getConnection(url, dbid, dbpw);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void Close() {
		if(rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}if(psmt!=null) {
			try {
				psmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	// 회의록 생성 클릭 이벤트로 발생하는 DAO 기능
	public int MakeMeeting(int t_code, String t_id, int t_room, String t_time, String t_comment) {
		
		
		try {
			
			getConn();
			
			String sql = "insert into TEXT values(TEXT_SEQ.nextval, ?, ?, "
					+ "to_char(sysdate,'yyyy.mm.dd hh24:mi'), ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, t_code);
			psmt.setString(2, t_id);
			psmt.setInt(3, t_room);
			psmt.setString(4, t_time);
			psmt.setString(5, t_comment);
			
			
			
			cnt = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			Close();
		}return cnt;
		
	}

}
