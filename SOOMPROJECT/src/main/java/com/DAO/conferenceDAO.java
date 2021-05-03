package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.VO.conferenceVO;

public class conferenceDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt;
	conferenceVO vo = null;

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

	public int Makeroom(int c_code, String c_title, String c_date, String c_guest) {
		try {

			getConn();

			String sql = "insert into conference values(CONFERENCE_SEQ.nextval,?,to_char(sysdate,'yyyy.mm.dd hh24:mi'),?)";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, c_code);
			psmt.setString(2, c_title);
			psmt.setString(3, c_date);
			psmt.setString(4, c_guest);

			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Close();
		}
		return cnt;
	}

	public int Update(String c_title, String c_guest) {

		vo = new conferenceVO(c_title, c_guest);

		try {
			getConn();

			String sql = "update conference set c_title = ?, c_guest = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, c_title);
			psmt.setString(2, c_guest);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Close();
		}
		return cnt;

	}

	public int Delete(int c_code) {
		try {

			getConn();

			String sql = "delete from conference where c_code = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, c_code);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Close();
		}
		return cnt;
	}

	public ArrayList<conferenceVO> select() {
		ArrayList<conferenceVO> arr = new ArrayList<conferenceVO>();
		try {
			getConn();

			String sql = "select * from conference";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			System.out.println("출력");

			while (rs.next()) {
				int getC_code = rs.getInt(1);
				String getC_title = rs.getString(2);
				String getC_date = rs.getString(3);
				String getC_guest = rs.getString(4);

				System.out.println(getC_code + "," + getC_title + "," + getC_date + "," + getC_guest);

				vo = new conferenceVO(getC_code, getC_title, getC_date, getC_guest);
				arr.add(vo);
				System.out.println(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Close();
		}
		return arr;
	}

}
