package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Leave;
import com.entity.Process;
import com.entity.Professional;
import com.entity.leave.LeaveList;

public interface LeaveMapper {
	/**
     *   删除请假单内容
     */
    int deleteByPrimaryKey(Integer leaveId);
     /**
      *  添加 请假单
      */
    int insert(Leave record);
     /**
      *   按条件添加请假单 
      */
    int insertSelective(Leave record);
    /**
     *   Id 查找请假单
     */
    Leave selectByPrimaryKey(Integer leaveId);
    /**
     *   按条件修改请假单
     */
    int updateByPrimaryKeySelective(Leave record);
    /**
     *   修改请假单 
     */
    int updateByPrimaryKey(Leave record);
    /**
     *  如果是员工登陆,按 员工id查询请假单
     */
    public List<LeaveList> selectLeaveByUid(@Param("uid") Integer uid,@Param("time") String time); 
    
    /**
     *   如果是经理登陆,按部门显示请假单
     */
    public List<LeaveList> selectLeaveBydid(@Param("did") Integer did,@Param("time") String time); 
    /**
     *   通过 leave id 查询请假单信息
     */
    public LeaveList selectLeaveByLid(@Param("lid") Integer lid);
    /**
     *   通过  user id 查询   申报表apply  id
     */
    public Integer selectApplyIdByUid(@Param("uid") Integer uid);
    /**
     *  通过 a_id 按条件 修改流程表 
     */
    public void updateProcessByAidSelective(Process process);
    /**
     *  查找 职位表所有信息
     */
    List<Professional> selectAllProfessional();
 
    
    
    
}