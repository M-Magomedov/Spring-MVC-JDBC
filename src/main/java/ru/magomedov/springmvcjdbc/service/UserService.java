package ru.magomedov.springmvcjdbc.service;

import ru.magomedov.springmvcjdbc.entity.User;

import java.util.List;

public interface UserService {

    User getUserDetail(int id);

    List<User> getAllUserDetail();

    int addUserDetail(User userDetail);

    int updateUserDetail(User userDetail);

    int deleteUserDetail(int id);
}