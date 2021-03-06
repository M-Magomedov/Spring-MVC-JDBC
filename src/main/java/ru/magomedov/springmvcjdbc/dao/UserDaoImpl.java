package ru.magomedov.springmvcjdbc.dao;

import ru.magomedov.springmvcjdbc.entity.User;
import ru.magomedov.springmvcjdbc.rowmapper.UserRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserDaoImpl implements UserDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Transactional
    public User getUserDetail(int id) {
        User userDetail = jdbcTemplate.queryForObject("select * from user_detail where id = ?",
                new Object[]{id}, new UserRowMapper());
        return userDetail;
    }

    @Transactional
    public List<User> getAllUserDetail() {
        List<User> userDetail = jdbcTemplate.query("select * from user_detail",
                new UserRowMapper());
        return userDetail;
    }

    @Transactional
    public int addUserDetail(User userDetail) {
        SimpleJdbcInsert simpleJdbcInsert = new SimpleJdbcInsert(jdbcTemplate);
        simpleJdbcInsert.withTableName("user_detail").usingGeneratedKeyColumns("id");
        Map<String, Object> parameters = new HashMap<String, Object>(4);
        parameters.put("first_name", userDetail.getFirstName());
        parameters.put("last_name", userDetail.getLastName());
        parameters.put("email", userDetail.getEmail());
        parameters.put("dob", userDetail.getDob());
        Number insertedId = simpleJdbcInsert.executeAndReturnKey(parameters);
        return insertedId.intValue();
    }

    @Transactional
    public int updateUserDetail(User userDetail) {
        String sql = "update user_detail set first_name = ?, last_name = ?, email = ?, dob = ? where id = ?";
        int resp = jdbcTemplate.update(sql, userDetail.getFirstName(), userDetail.getLastName(),
                userDetail.getEmail(), userDetail.getDob(), userDetail.getId());
        return resp;
    }

    @Transactional
    public int deleteUserDetail(int id) {
        int resp = jdbcTemplate.update("delete from user_detail where id = ?", id);
        return resp;
    }

}
