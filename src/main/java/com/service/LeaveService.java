package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Apply;
import com.entity.Leave;
import com.entity.Result_apply;
import com.entity.User;
import com.entity.leave.LeaveList;
import com.entity.Process;
import com.entity.Professional;

public interface LeaveService {

	 /**
     *  添加 请假单
     */
   int insert(Leave record);
   /**
  	 * @return  添加申报表
  	 */
      int insert(Apply record);
      /**
       * 通过user表 职位id查询
       */
      public User selectByProfessionalId(Integer pid);
      /**
       *  如果是员工登陆,按 员工id查询请假单
       */
      public List<LeaveList> showLeaveByUid(Integer uid,String time); 
      /**
       *   如果是经理登陆,按部门显示请假单
       */
      public List<LeaveList> showLeaveByDid(Integer did,String time);
      /**
       *   通过 leave id 查询请假单信息
       */
      public LeaveList showLeaveByLid(Integer lid);
      /**
       *   添加   申报(审核)结果表 
       */
      int insert(Result_apply record);
      /**
       *   通过  user id 查询   申报表apply  id
       */
      public Integer selectApplyIdByUid(Integer uid);
      /**
     	 *   通过  ID  按条件修改申报表
     	 */
      int updateByPrimaryKeySelective(Apply record);
      /**
       *  通过 a_id 按条件 修改流程表 
       */
      public void updateProcessByAidSelective(Process process);
      /**
       *   删除请假单内容
       */
      int deleteByPrimaryKey(Integer leaveId);
      /**
       *  查找 职位表所有信息
       */
      List<Professional> selectAllProfessional();
      /**
       *  添加流程表信息 
       */
     int insertProcess(Process record);
     /**
      *   获取   申报表 最大id 值
      */
     Apply selectApplyMaxId();
      
      
}
