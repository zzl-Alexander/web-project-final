package com.entity;

import java.util.Date;

public class User {
    private int id;
    private String name;
    private Date insertTime;
    private String news;
    private String photo;
    public User() {
    }

    public User(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public User(int id, String name, Date insertTime) {
        this.id = id;
        this.name = name;
        this.insertTime = insertTime;
    }
    public User(int id, String name, String news, Date insertTime) {
        this.id = id;
        this.name = name;
        this.insertTime = insertTime;
        this.news=news;
    }
    public User(int id, String name, String news, Date insertTime,String photo) {
        this.id = id;
        this.name = name;
        this.insertTime = insertTime;
        this.news=news;
        this.photo=photo;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public String getNews() {
        return news;
    }
    public String getPhoto(){ return photo;}
    public void setPhoto(String photo){
        this.photo=photo;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setNews(String news){
        this.news=news;
    }
    public Date getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
}
