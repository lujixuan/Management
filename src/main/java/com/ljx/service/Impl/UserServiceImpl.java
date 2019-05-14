package com.ljx.service.Impl;

import com.ljx.dto.HomeTaskGraphDto;
import com.ljx.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ljx.dao.UserDao;
import com.ljx.service.UserService;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	/* 
	 * 检验用户登录业务
	 */
	@Override
	public UserDto checkLogin(String userId, String userPwd) {
		
		UserDto userDto = userDao.findByUserId(userId);
		if(userDto != null && userDto.getUserPwd().equals(userPwd)){
			return userDto;
		}
		return null;
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
	public void registerByUserId(UserDto userDto){
		userDao.registerByUserId(userDto);
	}

	@Override
	public List<HomeTaskGraphDto> homeTaskGraph(int projectId){
		List<HomeTaskGraphDto> homeTaskGraphDtos= new ArrayList<>();
		Date date = new Date();
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		for(int i = 0; i < 7 ; i++){
			homeTaskGraphDtos.add(userDao.findTaskGraphData(projectId, calendar.getTime()));
			calendar.set(Calendar.DAY_OF_MONTH, -1);
		}
		return homeTaskGraphDtos;
	}
}

