package ru.magomedov.springmvcjdbc.rowmapper;


import org.springframework.jdbc.core.RowMapper;
import ru.magomedov.springmvcjdbc.entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserRowMapper implements RowMapper<User> {

    public User mapRow(ResultSet rs, int row) throws SQLException {
        User userDetail = new User();
        userDetail.setId(rs.getInt("id"));
        userDetail.setFirstName(rs.getString("first_name"));
        userDetail.setLastName(rs.getString("last_name"));
        userDetail.setEmail(rs.getString("email"));
        userDetail.setDob(rs.getString("dob"));
        return userDetail;
    }
}
