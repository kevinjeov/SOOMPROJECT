package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.VO.conferenceVO;
import com.VO.memberVO;
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
	public textVO vot = null;
	public conferenceVO voc = null;
	public memberVO vom = null;

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
			String url = "jdbc:oracle:thin:@172.30.1.15:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			// DB에 관련된 정보를 properties파일로 관리하는 방법
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void Close() {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (psmt != null) {
			try {
				psmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	// 회의록 생성 클릭 이벤트로 발생하는 DAO 기능
	public int MakeMeeting(int t_code, int t_room, String t_all, String t_summary, String t_plan, String t_decision,
			String t_remark, String t_guest, String t_time, String t_id, String t_title) {

		try {

			getConn();

			String sql = "insert into TEXT values(TEXT_SEQ.nextval, ?, ?, ?, ?, ?, ?, ?, to_char(sysdate,'yyyy.mm.dd hh24:mi'), ?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, voc.getC_code());
			psmt.setString(2, t_all);
			psmt.setString(3, t_summary);
			psmt.setString(4, t_plan);
			psmt.setString(5, t_decision);
			psmt.setString(6, t_remark);
			psmt.setString(7, t_guest);
			psmt.setString(8, t_id);
			psmt.setString(9, t_title);

			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Close();
		}
		return cnt;

	}

	public int UpateMeeting(int t_code, String t_all, String t_summary, String t_plan, String t_decision,
			String t_remark, String t_guest, String t_id, String t_title) {

		try {
			getConn();

			String sql = "update TEXT set t_all = ?, t_summary = ?, t_plan = ?, t_decision = ?, t_remark = ?,"
					+ " t_guest = ?, t_id = ?, t_title = ?, where t_code = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, t_all);
			psmt.setString(2, t_summary);
			psmt.setString(3, t_plan);
			psmt.setString(4, t_decision);
			psmt.setString(5, t_remark);
			psmt.setString(6, t_guest);
			psmt.setString(7, t_id);
			psmt.setString(8, t_title);
			psmt.setInt(9, t_code);
			
			

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Close();
		}
		return cnt;

	}
public ArrayList<textVO> Select() {
		
		ArrayList<textVO> arr = new ArrayList<textVO>();
		try {
			getConn();

		      String sql = "select * from TEXT";
		      psmt = conn.prepareStatement(sql);

		      rs = psmt.executeQuery();
		      
		      while(rs.next()) {
		    	String getT_all = rs.getString(3);
				String getT_summary = rs.getString(4);
				String getT_plan = rs.getString(5);
				String getT_decision = rs.getString(6);
				String getT_remark = rs.getString(7);
				String getT_guest = rs.getString(8);
				String getT_time = rs.getString(9);
				String getT_id = rs.getString(10);
				String getT_title = rs.getString(11);
                  vot = new textVO(getT_all, getT_summary, getT_plan, getT_decision, getT_remark,
                		  getT_guest, getT_time, getT_id, getT_title);
                  arr.add(vot);
		      }
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			Close();
		}return arr;
	}

}
