package com.tank.service.impl;

import com.tank.model.User;

import com.tank.dao.UserDao;

import com.tank.service.UserService;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by hzxiongtiankai on 2017/3/5.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    public User getUserById(Long userId) {
        return userDao.selectUserById(userId);
    }

    public User getUserByPhoneOrEmail(String emailOrPhone, Short state) {
        return userDao.selectUserByPhoneOrEmail(emailOrPhone, state);
    }

    public List<User> getAllUser() {
        return userDao.selectAllUser();
    }
}
