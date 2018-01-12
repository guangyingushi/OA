package com.entity;

import java.util.Date;

public class Account_dispatch {
    private Integer aDId;

    private Integer uId;

    private Integer cDId;

    private Double aDPrice;

    private String aDExplain;

    private Date aDTime;

    private Integer tId;

    public Integer getaDId() {
        return aDId;
    }

    public void setaDId(Integer aDId) {
        this.aDId = aDId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Integer getcDId() {
        return cDId;
    }

    public void setcDId(Integer cDId) {
        this.cDId = cDId;
    }

    public Double getaDPrice() {
        return aDPrice;
    }

    public void setaDPrice(Double aDPrice) {
        this.aDPrice = aDPrice;
    }

    public String getaDExplain() {
        return aDExplain;
    }

    public void setaDExplain(String aDExplain) {
        this.aDExplain = aDExplain == null ? null : aDExplain.trim();
    }

    public Date getaDTime() {
        return aDTime;
    }

    public void setaDTime(Date aDTime) {
        this.aDTime = aDTime;
    }

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }
}