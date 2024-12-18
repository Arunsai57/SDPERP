package com.example.demo.repository;

import com.example.demo.model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

public interface Admin_repos extends JpaRepository<Admin, Integer> {
    Admin findByUsername(String username); // Custom query method to find admin by username

	Admin findByUsernameAndPassword(String username, String password);
}
