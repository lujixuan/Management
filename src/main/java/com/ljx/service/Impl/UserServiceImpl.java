package com.ljx.service.Impl;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ljx.controller.ProjectController;
import com.ljx.dao.ProjectDao;
import com.ljx.dao.TaskDao;
import com.ljx.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ljx.dao.UserDao;
import com.ljx.service.UserService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.request.SessionScope;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;

	@Autowired
	private ProjectDao projectDao;

	@Autowired
	private TaskDao taskDao;
	
	/**
	 * 用户登录
	 */
	@Override
	public String checkLogin(UserDto userDto, Model model, HttpServletRequest request, HttpServletResponse response) {
		if( userDto.getUserId() == null || userDto.getUserId().equals("") ||  userDto.getUserPwd() == null || userDto.getUserPwd().equals("")){
			errorMessage("请输入用户名和密码！", response);
			return "login";
		}
		UserDto user = userDao.findByUserId(userDto.getUserId());
		if(user != null && user.getUserPwd().equals(userDto.getUserPwd())){
			model.addAttribute("user", user);
			operateCookie(userDto, model, request, response);
			// 查询当前用户的所有项目	,放入session中
			List<ProjectDto> loginUserProjectList = projectDao.findProjectListByUserId(userDto.getUserId());
			if(loginUserProjectList.size() != 0 && loginUserProjectList.get(0).getProjectId() != null && loginUserProjectList.get(0).getProjectId() != 0){
                for(ProjectDto projectDto : loginUserProjectList){
                    projectDto.setLoginUserId(user.getUserId());
                    projectDto.setUserUnfinishNum(userDao.searchUnfinishTaskNum(projectDto));
                }
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("loginUserProjectList", loginUserProjectList);
			    return personal(loginUserProjectList.get(0).getProjectId(), user.getUserId(), model,request);
			}
			return "project/searchProject";
		}
		errorMessage("用户名不存在或密码错误", response);
		return "login";
	}

	public void errorMessage(String msg, HttpServletResponse response){
		try {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.flush();
			out.println("<script>");
			out.println("alert('" + msg + "');");
			out.println("history.back();");
			out.println("</script>");
		}catch (IOException e){
		}
	}

	@Override
	public boolean findById(String userId){
		UserDto userDto = userDao.findByUserId(userId);
		if(userDto == null){
			return true;
		}
		return false;
	}

	@Override
	public String registerByUserId(UserDto user, Model model, HttpServletResponse response){
		if(null == user.getUserId() || "".equals(user.getUserId()) || null == user.getUserPwd() || "".equals(user.getUserPwd())
		|| null == user.getUserName() || "".equals(user.getUserName()) || null == user.getUserPwdConfirm() || "".equals(user.getUserPwdConfirm())){
			errorMessage("请输入完整信息！", response);
			return "register";
		}
		if (!user.getUserPwd().equals(user.getUserPwdConfirm())) {
			errorMessage("两次密码输入不一致！", response);
			return "register";
		}
		if(findById(user.getUserId())){
			userDao.registerByUserId(user);
			model.addAttribute("user", user);
			return "login";
		}
		errorMessage("用户名重复！", response);
		return "register";
	}


	@Override
	public void changePwd(UserDto user, Model model, HttpServletResponse response){
		if(null == user.getUserId() || "".equals(user.getUserId()) || null == user.getUserPwd() || "".equals(user.getUserPwd())
				|| null == user.getUserOldPwd() || "".equals(user.getUserOldPwd()) || null == user.getUserPwdConfirm() || "".equals(user.getUserPwdConfirm())){
			errorMessage("请输入完整信息！", response);
		}
		if (!user.getUserPwd().equals(user.getUserPwdConfirm())) {
			errorMessage("两次密码输入不一致！", response);
		}
		if(user.getUserOldPwd().equals(userDao.findByUserId(user.getUserId()).getUserPwd())){
			userDao.updatePwd(user);
			errorMessage("修改成功！", response);
		}
		errorMessage("密码错误！", response);
	}



	@Override
	public void operateCookie(UserDto userDto, Model model, HttpServletRequest request, HttpServletResponse response){
        Cookie loginIdCookie = new Cookie("loginId", userDto.getUserId());
        Cookie loginPwdCookie = new Cookie("loginPwd", userDto.getUserPwd());
        //设置Cookie的路经
        loginIdCookie.setPath(request.getContextPath()+"/");
        loginPwdCookie.setPath(request.getContextPath()+"/");

        if(userDto.getRememberMe() != null && "on".equals(userDto.getRememberMe())){
            //保存时间为7天
            loginIdCookie.setMaxAge(7*24*60*60);
            loginPwdCookie.setMaxAge(7*24*60*60);
        }else{
            //不保存Cookie
            loginIdCookie.setMaxAge(0);
            loginPwdCookie.setMaxAge(0);
        }
        //加入Cookie到响应头
        response.addCookie(loginIdCookie);
        response.addCookie(loginPwdCookie);
    }

    @Override
	public String userMessage(String loginUserId, @RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
		// 从第一条开始 每页查询五条数据
		PageHelper.startPage(pn, 5);
		List<UserMessage> userMessageList = userDao.listUserMessage(loginUserId);
		//将用户信息放入PageInfo对象里
		PageInfo userMessage = new PageInfo(userMessageList,5);
		model.addAttribute("userMessage", userMessage);

		return "/user/userMessage";
	}

	@Override
	public void cancelApply(String userId, Integer projectId, HttpServletResponse response){
		userDao.deleteProjectInfo(userId, projectId);
		errorMessage("成功",response);
	}

	@Override
	public void agreeApply(String userId, Integer projectId, String type, HttpServletResponse response){
		userDao.updateProjectInfo(userId, projectId, type);
		errorMessage("成功",response);
	}
	@Override
	public void editorAuthority(String userId, Integer projectId, String type, HttpServletResponse response){
		userDao.updateProjectInfo(userId, projectId, type);
		errorMessage("修改成功",response);
	}

	/**
	 * 查找首页需要的数据
	 */
	@Override
	public String personal(Integer projectId, String loginUserId, Model model, HttpServletRequest request){
		HttpSession httpSession = request.getSession();
		// 任务名
        String nowProjectName = projectDao.searchProjectNameById(projectId);
		// 燃尽图的数据
		List<HomeTaskGraphDto> areaData =   homeTaskGraph(projectId);
		// 任务分配图的数据
		List<DountDto> dountData = searchDonutData(projectId);
        // 查找项目动态
        List<ProjectChangeDto> projectChange = projectDao.searchProjectChangeList(projectId);
        // 查找任务动态
		List<TaskChangeDto> taskChange = taskDao.searchTaskChangeByProjectId(projectId);
		// 申请消息
		List<UserMessage> userMessageList = userDao.listUserMessage(loginUserId);
		// 未完成任务数
		int unfinishTaskNum = projectDao.searchUnfinishTaskNum(projectId);
		// 查找最近任务动态
		Date date = new Date();
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.DATE, -7);
		int recentTaskChangeNum = projectDao.countTaskChangeNum(projectId, calendar.getTime());
        int recentProjectChangeNum = projectDao.countProjectChangeNum(projectId, calendar.getTime());


        model.addAttribute("areaData", areaData);
		model.addAttribute("dountData", dountData);
        model.addAttribute("projectChange", projectChange);
        model.addAttribute("taskChange", taskChange);
		model.addAttribute("userMessageNum", userMessageList.size());
		model.addAttribute("unfinishTaskNum", unfinishTaskNum);
        model.addAttribute("recentTaskChangeNum", recentTaskChangeNum);
        model.addAttribute("recentProjectChangeNum", recentProjectChangeNum);
        httpSession.setAttribute("nowProjectName", nowProjectName);
		httpSession.setAttribute("nowProjectId", projectId);



		return "personal";
	}


	public List<DountDto> searchDonutData(Integer projectId) {
		return userDao.searchDountData(projectId);
	}

	@Override
	public List<HomeTaskGraphDto> homeTaskGraph(int projectId){
		List<HomeTaskGraphDto> homeTaskGraphDtos= new ArrayList<>();
		Date date = new Date();
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		for(int i = 0; i < 7 ; i++){
			homeTaskGraphDtos.add(userDao.findTaskGraphData(projectId, calendar.getTime()));
			calendar.add(Calendar.DATE, -1);
		}
		// 转换日期格式
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for(HomeTaskGraphDto homeTaskGraphDto : homeTaskGraphDtos){
			homeTaskGraphDto.setTaskDateString(dateFormat.format(homeTaskGraphDto.getTaskDate()));
		}
		return homeTaskGraphDtos;
	}

}

