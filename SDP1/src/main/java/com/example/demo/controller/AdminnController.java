package com.example.demo.controller;

import com.example.demo.model.Admin;
import com.example.demo.model.Student;
import com.example.demo.repository.Admin_repos;
import com.example.demo.repository.Student_repo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AdminnController {

    @Autowired
    private Admin_repos adminRepos;

    @Autowired
    private Student_repo studentRepos;

    // Admin Login
    @GetMapping("/admin/login")
    public String loginPage() {
        return "admin_login"; // Your login page JSP
    }

    @PostMapping("/admin/login")
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, Model model) {
        // Retrieve admin from the database
        Admin admin = adminRepos.findByUsername(username);

        if (admin != null && admin.getPassword().equals(password)) {
            return "redirect:/admin/home"; // Redirect to home page upon successful login
        } else {
            model.addAttribute("error", "Invalid credentials");
            return "admin_login"; // Show error on login page
        }
    }

    // Admin Home Page
    @GetMapping("/admin/home")
    public String homePage(Model model) {
        // Fetch all students from the database
        List<Student> students = studentRepos.findAll();

        // Add the list of students to the model
        model.addAttribute("students", students);

        return "admin_home"; // Your admin home page JSP
    }

    // Admin Logout
    @GetMapping("/admin/logout")
    public String logout() {
        return "redirect:/admin/login"; // Redirect to login page after logout
    }

}
