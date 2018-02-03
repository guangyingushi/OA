package com.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Apply;
import com.entity.Leave;
import com.entity.Process;
import com.entity.Professional;
import com.entity.Result_apply;
import com.entity.User;
import com.entity.leave.LeaveList;
import com.service.LeaveService;
import com.service.LoginService;
import com.service.RoleService;
import com.service.User_roleService;


@Controller
@RequestMapping("charts/")
public class chartsController {

	@Autowired
	private LoginService loginService; //用户登陆业务接口
	@Autowired
	private RoleService roleService;
	@Autowired
	private User_roleService userRoleService;
	@Autowired
	private LeaveService LeaveService;
	
	/**
	 *  请假单添加操作
	 */
	@RequestMapping(value="morrispage.html",method=RequestMethod.GET)
	public  String  gomorris(HttpSession session,Apply apply,Leave record,Process process,Integer nextUser){
		
		if(record.getLeaveType() != 0 && record.getLeaveType() != null) {
			
			session.setAttribute("login", 3);
			
			int login = (int) session.getAttribute("login");
			
			 // 添加 申报表 
			apply.settId(1);
			apply.setaCreateTime(new Date());
			apply.setaState("未审核");
			apply.setuId(login); //改成 login.getuId()
			LeaveService.insert(apply);
			
			// 添加 请假单表
			record.setuId(login);//改成login.getuId()
			record.setAid(LeaveService.selectApplyMaxId().getMaxaId());
			int num = LeaveService.insert(record);
			
			//添加 流程表
			process.setaId(LeaveService.selectApplyMaxId().getMaxaId());
			process.setProcessDealUId(login);// 改成 login.getuId()
			process.setProcessNextUId(nextUser);
			process.setProcessState("未完成");
			int numP = LeaveService.insertProcess(process);
		}
		
		return "redirect:/charts/show.html";
	}
	
	/**
	 *  按条件查询请假单列表
	 */
	@RequestMapping("show.html")
	public ModelAndView showLeaveList(String timename,HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		List<LeaveList> lealist = new ArrayList<LeaveList>();
		List<Professional> proflist = new ArrayList<Professional>();
		String url = "charts/morris";
		// User user = session.getAttribute("login");
		
		 //  查询职位表里所有职位
		proflist = LeaveService.selectAllProfessional();
		
		// 员工身份  按id 查询
	//	if(user.getProfessionalId() == 1) {
			/*lealist = LeaveService.showLeaveByUid(3, timename); //user.getuId() 
			System.out.println("数据测试Ing================"+lealist);
			modelAndView.setViewName(url);
			modelAndView.addObject("lealist",lealist);
			modelAndView.addObject("proflist",proflist);
			return modelAndView;*/
		
	//	}
		// 经理身份 按  部门查询
	//	    if(user.getProfessionalId() == 2 || user.getProfessionalId() == 3 || user.getProfessionalId() == 4) {
			lealist = LeaveService.showLeaveByDid(3, timename);  // user.getdId() 
			System.out.println("数据测试Ing================"+lealist);
			modelAndView.setViewName(url);
			modelAndView.addObject("lealist",lealist);
			modelAndView.addObject("proflist",proflist);
			return modelAndView;
	//	}
			
	}
	
	
	

	
	/**
	 *  跳转 假期审核,显示请假单详细信息,并且进行审核(查询用户请假单详细信息)
	 */
	@RequestMapping("flotpage.html")
	public  ModelAndView  goflot(@RequestParam("lid")Integer lid){
		ModelAndView mav = new ModelAndView();
		LeaveList leavelist = LeaveService.showLeaveByLid(lid);
		
		String url = "charts/flot";
		mav.setViewName(url);
		mav.addObject("leave",leavelist);
		
		System.out.println("假期审核!================="+leavelist);
		return mav;
	}
	
	
	/**
	 *  跳转 假期审核,显示请假单详细信息,并且进行审核(添加审核结果表)
	 */
	@RequestMapping("insert/flotpage.html")
	public String addResApply(Result_apply ra,Integer userid,Integer result,Apply apply,Process process) {
		Integer aid = LeaveService.selectApplyIdByUid(userid);
		ra.setaId(aid);
		ra.setrADealUser(4); //login.getuId()
		if(result != 0 && result == 3) { 
			ra.setrAResult("通过");
			apply.setaState("通过");
		}
		if(result != 0 && result == 4) {
		    ra.setrAResult("拒绝");
		    apply.setaState("拒绝");  
		}
		ra.setrADealTime(new Date());
		Integer i = LeaveService.insert(ra);
		
		// 添加  成功 之后 修改申报表 状态 
		if(i != 0 ) {
			apply.setaId(aid);
			int num = LeaveService.updateByPrimaryKeySelective(apply);
		}
		
		// 修改 流程表 的流程

		process.setaId(aid);
		process.setProcessDealUId(4);// login.getuId()
		process.setProcessNextUId(3);
		
		LeaveService.updateProcessByAidSelective(process);
		
		return "redirect:/charts/show.html";
	}
	/**
	 *  通过请假单 id 删除  请假单 
	 */
	@RequestMapping("del/leavepage.html")
	public String deleteleave(@RequestParam("deletelid") Integer deletelid) {
		
		int deletelea = LeaveService.deleteByPrimaryKey(deletelid);
		System.out.println(deletelea);
		return "redirect:/charts/show.html";
	}
}
