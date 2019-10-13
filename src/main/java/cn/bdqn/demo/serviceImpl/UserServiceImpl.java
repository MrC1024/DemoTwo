package cn.bdqn.demo.serviceImpl;

import cn.bdqn.demo.mapper.UserMapper;
import cn.bdqn.demo.pojo.User;
import cn.bdqn.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;
    public List<User> getAll() {
        return userMapper.getAll();
    }

    @Override
    public Integer del(Integer id) {
        return userMapper.del(id);
    }

    @Override
    public Integer add(User user) {
        return userMapper.add(user);
    }

    @Override
    public User getId(Integer id) {
        return userMapper.getId(id);
    }

    @Override
    public Integer update(User user) {
        return userMapper.update(user);
    }
}
