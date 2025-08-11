package com.shiyatsu.training.docker.user;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class User {

    private UUID id;
    private String name;
    private String password;

    private final List<String> roles = new ArrayList<>();

    public User(UUID id, String name, String password) {
        this.id = id;
        this.name = name;
        this.password = password;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<String> getRoles() {
        return roles;
    }
}
