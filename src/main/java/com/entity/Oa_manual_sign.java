package com.entity;

import java.util.Date;

public class Oa_manual_sign {
    private Integer omsId;

    private Integer uId;

    private Date omsStartTime;

    private Date omsEndTime;

    private String omsState;

    public Integer getOmsId() {
        return omsId;
    }

    public void setOmsId(Integer omsId) {
        this.omsId = omsId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Date getOmsStartTime() {
        return omsStartTime;
    }

    public void setOmsStartTime(Date omsStartTime) {
        this.omsStartTime = omsStartTime;
    }

    public Date getOmsEndTime() {
        return omsEndTime;
    }

    public void setOmsEndTime(Date omsEndTime) {
        this.omsEndTime = omsEndTime;
    }

    public String getOmsState() {
        return omsState;
    }

    public void setOmsState(String omsState) {
        this.omsState = omsState == null ? null : omsState.trim();
    }
}