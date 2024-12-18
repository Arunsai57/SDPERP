package com.example.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.model.Admin;
import com.example.demo.model.Student;
import com.example.demo.repository.Admin_repos;
import com.example.demo.repository.Student_repo;
import java.util.List;

@Service
public class Adminserviceint implements Admin_service {

    @Autowired
    private Admin_repos adminRepository;

    @Autowired
    private Student_repo studentRepository;

    // Implementing the method to check admin login credentials
    @Override
    public Admin checkAdminLogin(String username, String password) {
        // Fetching admin from the database by username and password
        // In production, make sure to use hashed passwords for security
        return adminRepository.findByUsernameAndPassword(username, password);
    }

    // Implementing the method to view all students
    @Override
    public List<Student> viewAllStudents() {
        // Fetching all students from the database
        return studentRepository.findAll();
    }

    // Additional admin-related methods can be implemented here (e.g., adding, updating, deleting students)
}
