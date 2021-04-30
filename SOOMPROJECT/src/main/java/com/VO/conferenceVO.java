package com.VO;

public class conferenceVO {
	
	private int c_code;
	private String c_title;
	private String c_date;
	private String c_guest;
	
	public conferenceVO(int c_code, String c_title, String c_date, String c_guest) {
		super();
		this.c_code = c_code;
		this.c_title = c_title;
		this.c_date = c_date;
		this.c_guest = c_guest;
	}
	
	

	public conferenceVO(String c_title, String c_guest) {
		super();
		this.c_title = c_title;
		this.c_guest = c_guest;
	}



	public int getC_code() {
		return c_code;
	}

	public void setC_code(int c_code) {
		this.c_code = c_code;
	}

	public String getC_title() {
		return c_title;
	}

	public void setC_title(String c_title) {
		this.c_title = c_title;
	}

	public String getC_date() {
		return c_date;
	}

	public void setC_date(String c_date) {
		this.c_date = c_date;
	}

	public String getC_guest() {
		return c_guest;
	}

	public void setC_guest(String c_guest) {
		this.c_guest = c_guest;
	}
	
	
	

}
