package com.entity;

import java.util.Date;

public class Note {
    private Integer nId;

    private Integer uId;

    private String nTitle;

    private String nContent;

    private Date nDealTime;

    private Date nUpdateTime;

    private Date nCreateTime;

    public Integer getnId() {
        return nId;
    }

    public void setnId(Integer nId) {
        this.nId = nId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getnTitle() {
        return nTitle;
    }

    public void setnTitle(String nTitle) {
        this.nTitle = nTitle == null ? null : nTitle.trim();
    }

    public String getnContent() {
        return nContent;
    }

    public void setnContent(String nContent) {
        this.nContent = nContent == null ? null : nContent.trim();
    }

    public Date getnDealTime() {
        return nDealTime;
    }

    public void setnDealTime(Date nDealTime) {
        this.nDealTime = nDealTime;
    }

    public Date getnUpdateTime() {
        return nUpdateTime;
    }

    public void setnUpdateTime(Date nUpdateTime) {
        this.nUpdateTime = nUpdateTime;
    }

    public Date getnCreateTime() {
        return nCreateTime;
    }

    public void setnCreateTime(Date nCreateTime) {
        this.nCreateTime = nCreateTime;
    }
}