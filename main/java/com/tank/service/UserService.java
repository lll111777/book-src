package com.tank.service;

import com.tank.model.User;

import java.util.List;

/**
 * Created by hzxiongtiankai on 2017/3/5.
 */

public interface UserService {

    List<User> getAllUser();

    User getUserByPhoneOrEmail(String emailOrPhone, Short state);

    User getUserById(Long userId);
}