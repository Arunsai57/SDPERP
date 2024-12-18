package com.example.demo.services;

import com.example.demo.model.Student;

public interface studentservice {
    
    // Method to get student details by student ID
    String getStudentDetails(int studentId);

    // Method for student login
    Student studentlogin(String email, String password);

    // Method for student registration
    String studentRegistration(Student student);
    

	Student findByEmail(String email);
}
