package com.VO;

public class textVO {
	
	private int t_code;
	private String t_id;
	private int t_room;
	private String t_time;
	private String t_comment;
	
	
	public textVO(int t_code, String t_id, int t_room, String t_time, String t_comment) {
		super();
		this.t_code = t_code;
		this.t_id = t_id;
		this.t_room = t_room;
		this.t_time = t_time;
		this.t_comment = t_comment;
	}
	
	


	public int getT_code() {
		return t_code;
	}


	public void setT_code(int t_code) {
		this.t_code = t_code;
	}


	public String getT_id() {
		return t_id;
	}


	public void setT_id(String t_id) {
		this.t_id = t_id;
	}


	public int getT_room() {
		return t_room;
	}


	public void setT_room(int t_room) {
		this.t_room = t_room;
	}


	public String getT_time() {
		return t_time;
	}


	public void setT_time(String t_time) {
		this.t_time = t_time;
	}


	public String getT_comment() {
		return t_comment;
	}


	public void setT_comment(String t_comment) {
		this.t_comment = t_comment;
	}
	
	
	

}
