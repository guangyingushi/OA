package com.entity;

import java.util.Date;

public class Msg_info {
    private Integer msgId;

    private Integer uId;

    private String msgTitle;

    private String msgContent;

    private String msgFile;

    private String msgState;

    private Integer msgSendtoUId;

    private Date msgCreateTime;

    public Integer getMsgId() {
        return msgId;
    }

    public void setMsgId(Integer msgId) {
        this.msgId = msgId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getMsgTitle() {
        return msgTitle;
    }

    public void setMsgTitle(String msgTitle) {
        this.msgTitle = msgTitle == null ? null : msgTitle.trim();
    }

    public String getMsgContent() {
        return msgContent;
    }

    public void setMsgContent(String msgContent) {
        this.msgContent = msgContent == null ? null : msgContent.trim();
    }

    public String getMsgFile() {
        return msgFile;
    }

    public void setMsgFile(String msgFile) {
        this.msgFile = msgFile == null ? null : msgFile.trim();
    }

    public String getMsgState() {
        return msgState;
    }

    public void setMsgState(String msgState) {
        this.msgState = msgState == null ? null : msgState.trim();
    }

    public Integer getMsgSendtoUId() {
        return msgSendtoUId;
    }

    public void setMsgSendtoUId(Integer msgSendtoUId) {
        this.msgSendtoUId = msgSendtoUId;
    }

    public Date getMsgCreateTime() {
        return msgCreateTime;
    }

    public void setMsgCreateTime(Date msgCreateTime) {
        this.msgCreateTime = msgCreateTime;
    }
}