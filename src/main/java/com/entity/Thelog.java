package com.entity;

import java.util.Date;

public class Thelog {
    private Integer thelogId;

    private Integer uId;

    private Date thelogLoginTime;

    private Date thelogOutTime;

    private String thelogIp;

    public Integer getThelogId() {
        return thelogId;
    }

    public void setThelogId(Integer thelogId) {
        this.thelogId = thelogId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Date getThelogLoginTime() {
        return thelogLoginTime;
    }

    public void setThelogLoginTime(Date thelogLoginTime) {
        this.thelogLoginTime = thelogLoginTime;
    }

    public Date getThelogOutTime() {
        return thelogOutTime;
    }

    public void setThelogOutTime(Date thelogOutTime) {
        this.thelogOutTime = thelogOutTime;
    }

    public String getThelogIp() {
        return thelogIp;
    }

    public void setThelogIp(String thelogIp) {
        this.thelogIp = thelogIp == null ? null : thelogIp.trim();
    }
}