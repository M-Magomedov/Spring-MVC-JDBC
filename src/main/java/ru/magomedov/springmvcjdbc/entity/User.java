package ru.magomedov.springmvcjdbc.entity;

import lombok.Data;


@Data
public class User {
    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String dob;
}
