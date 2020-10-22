package com.dao;

import com.dto.User;

public interface UserDao {
    int insertuser(User user);
    boolean login(User user);
}
