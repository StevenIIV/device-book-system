package com.eer_system.service.serviceImpl;

import com.eer_system.dao.UserMapper;
import com.eer_system.model.User;
import com.eer_system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User login(int id, String password) {
        return userMapper.login(id,password);
    }

    @Override
    public List<User> getAll() {
        return userMapper.getAll();
    }

    @Override
    public int updatemessage(User user) {
        return userMapper.updateByPrimaryKey(user);
    }

    @Override
    public int deleteuser(String id) {
        int iid=Integer.parseInt(id);
        return userMapper.deleteByPrimaryKey(iid);
    }

    @Override
    public int insertuser(User user) {
        return userMapper.insertSelective(user);
    }

}
