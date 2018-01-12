package com.entity;

public class Login {
    private Integer loginId;

    private String loginUsercode;

    private String loginPassword;

    private String uId;

    public Integer getLoginId() {
        return loginId;
    }

    public void setLoginId(Integer loginId) {
        this.loginId = loginId;
    }

    public String getLoginUsercode() {
        return loginUsercode;
    }

    public void setLoginUsercode(String loginUsercode) {
        this.loginUsercode = loginUsercode == null ? null : loginUsercode.trim();
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword == null ? null : loginPassword.trim();
    }

    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId == null ? null : uId.trim();
    }
}