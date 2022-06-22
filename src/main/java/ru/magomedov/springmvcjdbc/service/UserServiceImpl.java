package ru.magomedov.springmvcjdbc.service;

import org.springframework.beans.factory.annotation.Autowired;
import ru.magomedov.springmvcjdbc.dao.UserDao;
import ru.magomedov.springmvcjdbc.entity.User;

import java.util.List;

public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDetailDao;

    public User getUserDetail(int id) {
        return userDetailDao.getUserDetail(id);
    }

    public List<User> getAllUserDetail() {
        return userDetailDao.getAllUserDetail();
    }

    @Override
    public int addUserDetail(User userDetail) {
        return userDetailDao.addUserDetail(userDetail);
    }

    @Override
    public int updateUserDetail(User userDetail) {
        return userDetailDao.updateUserDetail(userDetail);
    }

    @Override
    public int deleteUserDetail(int id) {
        return userDetailDao.deleteUserDetail(id);
    }

    public UserDao getUserDetailDao() {
        return userDetailDao;
    }

}
