package com.VO;

public class memberVO {
	// 1. 묶어줄 변수 선언
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_age;
	private String m_gender;
	private String m_tel;
	private String m_email;
	private String m_image;
	
	
	// 2.생성자 (generate using fields)
	public memberVO(String m_id, String m_pw, String m_name, String m_age, String m_gender, String m_tel,
			String m_email, String m_image) {
		super();
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_age = m_age;
		this.m_gender = m_gender;
		this.m_tel = m_tel;
		this.m_email = m_email;
		this.m_image = m_image;
	}
	
	public memberVO(String m_id, String m_pw) {
	}

	public memberVO(String m_id, String m_name, String m_email, String m_image) {
	}

	public memberVO(String m_id, String m_name, String m_age, String m_gender, String m_tel,
			String m_email, String m_image) {
	}

	// 3. getters, setters (generate Getters and Setters)
	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_age() {
		return m_age;
	}

	public void setM_age(String m_age) {
		this.m_age = m_age;
	}

	public String getM_gender() {
		return m_gender;
	}

	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}

	public String getM_tel() {
		return m_tel;
	}

	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_image() {
		return m_image;
	}

	public void setM_image(String m_image) {
		this.m_image = m_image;
	}
}
