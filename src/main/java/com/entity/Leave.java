package com.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Leave {
	
    private Integer leaveId;

    private Integer uId;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date leaveStartTime;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date leaveEndTime;

    private String leaveContent;

    private Integer aid;
    
    private Integer leaveType; //1=事假   2=病假   3=出差

	public Integer getLeaveType() {
		return leaveType;
	}

	public void setLeaveType(Integer leaveType) {
		this.leaveType = leaveType;
	}

	public Integer getLeaveId() {
        return leaveId;
    }

    public void setLeaveId(Integer leaveId) {
        this.leaveId = leaveId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Date getLeaveStartTime() {
        return leaveStartTime;
    }

    public void setLeaveStartTime(Date leaveStartTime) {
        this.leaveStartTime = leaveStartTime;
    }

    public Date getLeaveEndTime() {
        return leaveEndTime;
    }

    public void setLeaveEndTime(Date leaveEndTime) {
        this.leaveEndTime = leaveEndTime;
    }

    public String getLeaveContent() {
        return leaveContent;
    }

    public void setLeaveContent(String leaveContent) {
        this.leaveContent = leaveContent == null ? null : leaveContent.trim();
    }

	public Integer getAid() {
		return aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

   
}