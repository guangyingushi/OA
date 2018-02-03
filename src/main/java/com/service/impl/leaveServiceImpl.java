package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ApplyMapper;
import com.dao.LeaveMapper;
import com.dao.ProcessMapper;
import com.dao.ProfessionalMapper;
import com.dao.Result_applyMapper;
import com.dao.UserMapper;
import com.entity.Apply;
import com.entity.Leave;
import com.entity.Process;
import com.entity.Professional;
import com.entity.Result_apply;
import com.entity.User;
import com.entity.leave.LeaveList;
import com.service.LeaveService;
@Service
public class leaveServiceImpl implements LeaveService {
    @Autowired
	private LeaveMapper LeaveMapper;
    @Autowired
    private ApplyMapper applymapper;
	@Autowired
    private UserMapper usermapper;
	@Autowired
	private Result_applyMapper result_applymapper;
	@Autowired
	private ProfessionalMapper professionalmapper;
	@Autowired
	private ProcessMapper processmapper;
    /**
     *  添加 请假单
     */
	@Override
	public int insert(Leave record) {
		
		int num = LeaveMapper.insert(record);
		
		return num;
	}

	 /**
  	 * @return  添加申报表
  	 */
	@Override
	public int insert(Apply record) {
		
		applymapper.insert(record);
		
		return 0;
	}
	/**
     * 通过user表 职位id查询
     */
	@Override
	public User selectByProfessionalId(Integer pid) {
		
		return usermapper.selectByProfessionalId(pid);
	}
	/**
     *  如果是员工登陆,按 员工id查询请假单
     */
	@Override
	public List<LeaveList> showLeaveByUid(Integer uid, String time) {
		
		return LeaveMapper.selectLeaveByUid(uid, time);
	}
	/**
     *   如果是经理登陆,按部门显示请假单
     */
	@Override
	public List<LeaveList> showLeaveByDid(Integer did, String time) {
		
		return LeaveMapper.selectLeaveBydid(did, time);
	}
	/**
     *   通过 leave id 查询请假单信息
     */
	@Override
	public LeaveList showLeaveByLid(Integer lid) {
		
		return LeaveMapper.selectLeaveByLid(lid);
	}
	/**
     *   添加   申报(审核)结果表 
     */
	@Override
	public int insert(Result_apply record) {
		
		return result_applymapper.insertResApp(record);
	}
	/**
     *   通过  user id 查询   申报表apply  id
     */
	@Override
	public Integer selectApplyIdByUid(Integer uid) {
		
		return LeaveMapper.selectApplyIdByUid(uid);
	}
	 /**
 	 *   通过  ID  按条件修改申报表
 	 */
	@Override
	public int updateByPrimaryKeySelective(Apply record) {
		
		return applymapper.updateByPrimaryKeySelective(record);
	}
	/**
     *  通过 a_id 按条件 修改流程表 
     */
	@Override
	public void updateProcessByAidSelective(com.entity.Process process) {
		LeaveMapper.updateProcessByAidSelective(process);
	}
	/**
     *   删除请假单内容
     */
	@Override
	public int deleteByPrimaryKey(Integer leaveId) {
		
		return LeaveMapper.deleteByPrimaryKey(leaveId);
	}
	/**
     *  查找 职位表所有信息
     */
	@Override
	public List<Professional> selectAllProfessional() {
		
		return professionalmapper.selectAllProfessional();
	}
	 /**
     *  添加流程表信息 
     */
	@Override
	public int insertProcess(Process record) {
		
		return processmapper.insertProcess(record);
	}
	/**
     *   获取   申报表 最大id 值
     */
	@Override
	public Apply selectApplyMaxId() {
		
		return applymapper.selectApplyMaxId();
	}

	 
   
	
	
}
