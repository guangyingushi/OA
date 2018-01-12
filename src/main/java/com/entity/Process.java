package com.entity;

public class Process {
    private Integer processId;

    private Integer aId;

    private Integer processDealUId;

    private Integer processNextUId;

    private String processState;

    public Integer getProcessId() {
        return processId;
    }

    public void setProcessId(Integer processId) {
        this.processId = processId;
    }

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public Integer getProcessDealUId() {
        return processDealUId;
    }

    public void setProcessDealUId(Integer processDealUId) {
        this.processDealUId = processDealUId;
    }

    public Integer getProcessNextUId() {
        return processNextUId;
    }

    public void setProcessNextUId(Integer processNextUId) {
        this.processNextUId = processNextUId;
    }

    public String getProcessState() {
        return processState;
    }

    public void setProcessState(String processState) {
        this.processState = processState == null ? null : processState.trim();
    }
}