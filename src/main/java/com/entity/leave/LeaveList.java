package com.entity.leave;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class LeaveList {
	
	 private Integer leave_id;
	 private String u_name;
	 private String professional_name;
	 private String d_name;
	 @JsonFormat(pattern="yyyy-MM-dd")
	 private Date leave_start_time;
	 private Integer leave_type; //1=事假   2=病假   3=出差
	 private String a_state;// 审核状态
	 private String leave_content;//请假原因
	 private Integer u_id;//用户表 id
	 
	 
	public String getLeave_content() {
		return leave_content;
	}
	public void setLeave_content(String leave_content) {
		this.leave_content = leave_content;
	}
	
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public Integer getLeave_id() {
		return leave_id;
	}
	public void setLeave_id(Integer leave_id) {
		this.leave_id = leave_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getProfessional_name() {
		return professional_name;
	}
	public void setProfessional_name(String professional_name) {
		this.professional_name = professional_name;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public Date getLeave_start_time() {
		return leave_start_time;
	}
	public void setLeave_start_time(Date leave_start_time) {
		this.leave_start_time = leave_start_time;
	}
	public Integer getLeave_type() {
		return leave_type;
	}
	public void setLeave_type(Integer leave_type) {
		this.leave_type = leave_type;
	}
	public String getA_state() {
		return a_state;
	}
	public void setA_state(String a_state) {
		this.a_state = a_state;
	}
	 
	 
}
