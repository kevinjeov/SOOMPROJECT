package com.VO;

public class textVO {
	
	private int t_code;
	private int t_room;
	private String t_all;
	private String t_summary;
	private String t_plan;
	private String t_decision;
	private String t_remark;
	private String t_guest;
	private String t_time;
	private String t_id;
	private String t_title;
	
	public textVO(int t_code, int t_room, String t_all, String t_summary, String t_plan, String t_decision,
			String t_remark, String t_guest, String t_time, String t_id, String t_title) {
		super();
		this.t_code = t_code;
		this.t_room = t_room;
		this.t_all = t_all;
		this.t_summary = t_summary;
		this.t_plan = t_plan;
		this.t_decision = t_decision;
		this.t_remark = t_remark;
		this.t_guest = t_guest;
		this.t_time = t_time;
		this.t_id = t_id;
		this.t_title = t_title;
	}
	
	

	public textVO(String t_all, String t_summary, String t_plan, String t_decision, String t_remark, String t_guest,
			String t_time, String t_id, String t_title) {
		super();
		this.t_all = t_all;
		this.t_summary = t_summary;
		this.t_plan = t_plan;
		this.t_decision = t_decision;
		this.t_remark = t_remark;
		this.t_guest = t_guest;
		this.t_time = t_time;
		this.t_id = t_id;
		this.t_title = t_title;
	}



	public int getT_code() {
		return t_code;
	}

	public void setT_code(int t_code) {
		this.t_code = t_code;
	}

	public int getT_room() {
		return t_room;
	}

	public void setT_room(int t_room) {
		this.t_room = t_room;
	}

	public String getT_all() {
		return t_all;
	}

	public void setT_all(String t_all) {
		this.t_all = t_all;
	}

	public String getT_summary() {
		return t_summary;
	}

	public void setT_summary(String t_summary) {
		this.t_summary = t_summary;
	}

	public String getT_plan() {
		return t_plan;
	}

	public void setT_plan(String t_plan) {
		this.t_plan = t_plan;
	}

	public String getT_decision() {
		return t_decision;
	}

	public void setT_decision(String t_decision) {
		this.t_decision = t_decision;
	}

	public String getT_remark() {
		return t_remark;
	}

	public void setT_remark(String t_remark) {
		this.t_remark = t_remark;
	}

	public String getT_guest() {
		return t_guest;
	}

	public void setT_guest(String t_guest) {
		this.t_guest = t_guest;
	}

	public String getT_time() {
		return t_time;
	}

	public void setT_time(String t_time) {
		this.t_time = t_time;
	}
	
	public String getT_id() {
		return t_id;
	}

	public void setT_id(String t_id) {
		this.t_id = t_id;
	}
	
	public String getT_title() {
		return t_title;
	}

	public void setT_title(String t_title) {
		this.t_title = t_title;
	}
	

}
