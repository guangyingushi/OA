package com.entity;

import java.util.Date;

public class User {
    private Integer uId;

    private String uName;

    private Date uStartTime;

    private Date uEndTime;

    private String uPhone;

    private String uSex;

    private String uImg;

    private String uState;

    private Integer dId;

    private Integer professionalId;

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName == null ? null : uName.trim();
    }

    public Date getuStartTime() {
        return uStartTime;
    }

    public void setuStartTime(Date uStartTime) {
        this.uStartTime = uStartTime;
    }

    public Date getuEndTime() {
        return uEndTime;
    }

    public void setuEndTime(Date uEndTime) {
        this.uEndTime = uEndTime;
    }

    public String getuPhone() {
        return uPhone;
    }

    public void setuPhone(String uPhone) {
        this.uPhone = uPhone == null ? null : uPhone.trim();
    }

    public String getuSex() {
        return uSex;
    }

    public void setuSex(String uSex) {
        this.uSex = uSex == null ? null : uSex.trim();
    }

    public String getuImg() {
        return uImg;
    }

    public void setuImg(String uImg) {
        this.uImg = uImg == null ? null : uImg.trim();
    }

    public String getuState() {
        return uState;
    }

    public void setuState(String uState) {
        this.uState = uState == null ? null : uState.trim();
    }

    public Integer getdId() {
        return dId;
    }

    public void setdId(Integer dId) {
        this.dId = dId;
    }

    public Integer getProfessionalId() {
        return professionalId;
    }

    public void setProfessionalId(Integer professionalId) {
        this.professionalId = professionalId;
    }
}