package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.VO.memberVO;

public class memberDAO {
	// DAO (Data Access Object)
	// DB에 연결되는 기능들을 한 클래스파일에 모아서 구현(중복되는 최소화 / 보안)
	// 1. Connection 메소드 만들기
	// 2. Close 메소드 만들기
	// 3. 각 기능들에서 자주 사용하는 변수 멤버변수 만들기
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt;
	memberVO vo = null;
	
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
	
	public int Join(String m_id, String m_pw, String m_name, String m_age, String m_gender, String m_tel,
			String m_email, String m_image) {
		
		
		try {
			
			getConn();
			
			String sql = "insert into MEMBER values(?, ?, ?, ?, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, m_id);
			psmt.setString(2, m_pw);
			psmt.setString(3, m_name);
			psmt.setString(4, m_age);
			psmt.setString(5, m_gender);
			psmt.setString(6, m_tel);
			psmt.setString(7, m_email);
			psmt.setString(8, m_image);
			
			
			cnt = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			Close();
		}return cnt;
		
	}
	public int Update(String m_id, String m_pw, String m_tel, String m_email, String m_image) {
		
			vo = new memberVO(m_id, m_tel, m_email, m_image);
			
		try {
			getConn();
			
			
			String sql = "update MEMBER set m_pw = ?, m_tel = ?, m_email = ? where m_id = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, m_pw);
			psmt.setString(2, m_tel);
			psmt.setString(3, m_email);
			psmt.setString(4, vo.getM_id());
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			Close();
		}return cnt;
		
	}
	public memberVO Login(String m_id, String m_pw) {
		
		try {
			getConn();

			String sql = "select * from MEMBER where M_ID = ? and M_PW = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, m_id);
			psmt.setString(2, m_pw);
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				String getM_id = rs.getString(1);
				String getM_name = rs.getString(3);
				String getM_email = rs.getString(7);
				String getM_image = rs.getString(8);
				vo = new memberVO(getM_id, getM_name, getM_email ,getM_image);
				System.out.println("vo값 확인");
				System.out.println(vo);
			}
			
		}catch (Exception e){
			e.printStackTrace();
		}finally {
			Close();
		}return vo;
	} 
	public ArrayList<memberVO> Select() {
		
		ArrayList<memberVO> arr = new ArrayList<memberVO>();
		try {
			getConn();

		      String sql = "select * from MEMBER";
		      psmt = conn.prepareStatement(sql);

		      rs = psmt.executeQuery();
		      
		      while(rs.next()) {
		    	String getM_id = rs.getString(1);
				String getM_name = rs.getString(3);
				String getM_age = rs.getString(4);
				String getM_gender = rs.getString(5);
				String getM_tel = rs.getString(6);
				String getM_email = rs.getString(7);
				String getM_image = rs.getString(8);
                  vo = new memberVO(getM_id,getM_name,getM_age,getM_gender,getM_tel,getM_email,getM_image);
                  arr.add(vo);
		      }
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			Close();
		}return arr;
	}
public int Delete(String num) {
		
		try {
			
			getConn();
			
			String sql = "delete from MEMBER where m_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num);

			
			cnt = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			Close();
		}return cnt;
		
	}
public boolean idCheck(String m_id) {
	boolean check = true;
	try {
		getConn();

		String sql = "select * from MEMBER where m_id = ?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, m_id);
		
		
		rs = psmt.executeQuery();
		if(rs.next()) {
			check = false;
		}else {
			check = true;
		}
		
	}catch (Exception e){
		e.printStackTrace();
	}finally {
		Close();
	}return check;
}

}
