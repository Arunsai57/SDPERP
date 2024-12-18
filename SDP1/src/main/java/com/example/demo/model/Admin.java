package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "admin_table") // Specify the database table name for Admin
public class Admin {

    @Id // Primary key
    @Column(name = "admin_id", nullable = false, unique = true)
    private int id;

    @Column(name = "admin_username", nullable = false, length = 50)
    private String username;

    @Column(name = "admin_password", nullable = false, length = 100)
    private String password;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
