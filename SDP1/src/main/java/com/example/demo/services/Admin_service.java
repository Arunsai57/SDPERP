package com.example.demo.services;

import java.util.List;
import com.example.demo.model.Admin;
import com.example.demo.model.Student;

public interface Admin_service {
    
    // Method to check admin login credentials
    Admin checkAdminLogin(String username, String password);

    // Method to view all students (Admin-related functionality)
    List<Student> viewAllStudents();
    
    // Other admin-related methods can be added here
}
