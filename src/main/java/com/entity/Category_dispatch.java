package com.entity;

public class Category_dispatch {
    private Integer cDId;

    private String cDName;

    public Integer getcDId() {
        return cDId;
    }

    public void setcDId(Integer cDId) {
        this.cDId = cDId;
    }

    public String getcDName() {
        return cDName;
    }

    public void setcDName(String cDName) {
        this.cDName = cDName == null ? null : cDName.trim();
    }
}