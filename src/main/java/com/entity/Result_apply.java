package com.entity;

import java.util.Date;

public class Result_apply {
    private Integer rAId;

    private Integer aId;

    private Integer rADealUser;

    private String rAResult;

    private String rAOpinion;

    private Date rADealTime;

    public Integer getrAId() {
        return rAId;
    }

    public void setrAId(Integer rAId) {
        this.rAId = rAId;
    }

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public Integer getrADealUser() {
        return rADealUser;
    }

    public void setrADealUser(Integer rADealUser) {
        this.rADealUser = rADealUser;
    }

    public String getrAResult() {
        return rAResult;
    }

    public void setrAResult(String rAResult) {
        this.rAResult = rAResult == null ? null : rAResult.trim();
    }

    public String getrAOpinion() {
        return rAOpinion;
    }

    public void setrAOpinion(String rAOpinion) {
        this.rAOpinion = rAOpinion == null ? null : rAOpinion.trim();
    }

    public Date getrADealTime() {
        return rADealTime;
    }

    public void setrADealTime(Date rADealTime) {
        this.rADealTime = rADealTime;
    }
}