package com.entity;

public class Role {
    private Integer rId;

    private String rName;

    private Integer rUser;

    public Integer getrId() {
        return rId;
    }

    public void setrId(Integer rId) {
        this.rId = rId;
    }

    public String getrName() {
        return rName;
    }

    public void setrName(String rName) {
        this.rName = rName == null ? null : rName.trim();
    }

    public Integer getrUser() {
        return rUser;
    }

    public void setrUser(Integer rUser) {
        this.rUser = rUser;
    }
}