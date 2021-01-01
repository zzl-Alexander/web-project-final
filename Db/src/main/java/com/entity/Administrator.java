package com.entity;

public class Administrator {

    private String name;
    private String administratorName;
    private String password;

    public Administrator(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAdministratorName() {
        return administratorName;
    }

    public void setAdministratorName(String userName) {
        this.administratorName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
