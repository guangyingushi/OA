package com.entity;

import java.util.Date;

public class Scheduleemployees {
    private Integer sId;

    private String sContent;

    private Date sStartTime;

    private Date sEndTime;

    private Date sUpdateTime;

    private Date sCreateTime;

    private Integer uId;

    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public String getsContent() {
        return sContent;
    }

    public void setsContent(String sContent) {
        this.sContent = sContent == null ? null : sContent.trim();
    }

    public Date getsStartTime() {
        return sStartTime;
    }

    public void setsStartTime(Date sStartTime) {
        this.sStartTime = sStartTime;
    }

    public Date getsEndTime() {
        return sEndTime;
    }

    public void setsEndTime(Date sEndTime) {
        this.sEndTime = sEndTime;
    }

    public Date getsUpdateTime() {
        return sUpdateTime;
    }

    public void setsUpdateTime(Date sUpdateTime) {
        this.sUpdateTime = sUpdateTime;
    }

    public Date getsCreateTime() {
        return sCreateTime;
    }

    public void setsCreateTime(Date sCreateTime) {
        this.sCreateTime = sCreateTime;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }
}