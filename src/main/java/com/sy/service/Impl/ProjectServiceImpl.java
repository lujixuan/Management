package com.sy.service.Impl;

import com.sy.dao.UserDao;
import com.sy.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;

public class ProjectServiceImpl {

    @Autowired
    private UserDao userDao;

    /*
     * 检验用户登录业务
     */
    public UserDto checkLogin(String userId, String userPwd) {

        UserDto userDto = userDao.findByUserId(userId);
        if(userDto != null && userDto.getUserPwd().equals(userPwd)){

            return userDto;
        }
        return null;
    }

    public boolean findById(String userId){
        UserDto userDto = userDao.findByUserId(userId);
        if(userDto == null){
            return true;
        }
        return false;
    }

    public void registerByUserId(UserDto userDto){
        userDao.registerByUserId(userDto);
    }
}
