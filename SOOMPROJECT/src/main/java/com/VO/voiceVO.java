package com.VO;

public class voiceVO {
	
	private int v_code;
	private int v_room;
	private String v_path;
	
	public voiceVO(int v_code, int v_room, String v_path) {
		super();
		this.v_code = v_code;
		this.v_room = v_room;
		this.v_path = v_path;
	}

	public int getV_code() {
		return v_code;
	}

	public void setV_code(int v_code) {
		this.v_code = v_code;
	}

	public int getV_room() {
		return v_room;
	}

	public void setV_room(int v_room) {
		this.v_room = v_room;
	}

	public String getV_path() {
		return v_path;
	}

	public void setV_path(String v_path) {
		this.v_path = v_path;
	}
	
	
	

}
