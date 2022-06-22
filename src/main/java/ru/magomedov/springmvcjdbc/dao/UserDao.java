package ru.magomedov.springmvcjdbc.dao;

import ru.magomedov.springmvcjdbc.entity.User;

import java.util.List;

public interface UserDao {

    User getUserDetail(int id);

    List<User> getAllUserDetail();

    int addUserDetail(User userDetail);

    int updateUserDetail(User userDetail);

    int deleteUserDetail(int id);

}