package com.entity;

import java.util.Date;

public class Counduct {
    private Integer counductId;

    private String counductType;

    private String counductTitle;

    private String counductContent;

    private Date counductCreateTime;

    private Integer uId;

    public Integer getCounductId() {
        return counductId;
    }

    public void setCounductId(Integer counductId) {
        this.counductId = counductId;
    }

    public String getCounductType() {
        return counductType;
    }

    public void setCounductType(String counductType) {
        this.counductType = counductType == null ? null : counductType.trim();
    }

    public String getCounductTitle() {
        return counductTitle;
    }

    public void setCounductTitle(String counductTitle) {
        this.counductTitle = counductTitle == null ? null : counductTitle.trim();
    }

    public String getCounductContent() {
        return counductContent;
    }

    public void setCounductContent(String counductContent) {
        this.counductContent = counductContent == null ? null : counductContent.trim();
    }

    public Date getCounductCreateTime() {
        return counductCreateTime;
    }

    public void setCounductCreateTime(Date counductCreateTime) {
        this.counductCreateTime = counductCreateTime;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }
}