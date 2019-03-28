package com.eer_system.service;

import com.eer_system.model.User;

import java.util.List;

public interface UserService {

    User login(int id, String password);
    List<User> getAll();
    int updatemessage(User user);
    int deleteuser(String id);
    int insertuser(User user);
}
