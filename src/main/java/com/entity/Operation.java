package com.entity;

import java.util.Date;

public class Operation {
    private Integer operationId;

    private Integer uId;

    private String operationEven;

    private Date operationTime;

    public Integer getOperationId() {
        return operationId;
    }

    public void setOperationId(Integer operationId) {
        this.operationId = operationId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getOperationEven() {
        return operationEven;
    }

    public void setOperationEven(String operationEven) {
        this.operationEven = operationEven == null ? null : operationEven.trim();
    }

    public Date getOperationTime() {
        return operationTime;
    }

    public void setOperationTime(Date operationTime) {
        this.operationTime = operationTime;
    }
}