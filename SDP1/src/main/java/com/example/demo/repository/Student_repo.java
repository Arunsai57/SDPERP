package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.demo.model.Student;

@Repository
public interface Student_repo extends JpaRepository<Student, Integer> {
    
    // Method to fetch student by email only
    Student findByEmail(String email);  
   
}

