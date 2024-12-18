package com.example.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.model.Student;
import com.example.demo.repository.Student_repo;

@Service
public class studentserviceimp implements studentservice {

    @Autowired
    private Student_repo studentRepository;

    // Implementing the method to get student details
    @Override
    public String getStudentDetails(int studentId) {
        Student student = studentRepository.findById(studentId).orElse(null);
        return student != null ? "Student details: " + student : "Student not found";
    }

    // Implementing the method for student login
    @Override
    public Student studentlogin(String email, String password) {
        return null;
    }

    // Implementing the method for student registration
    @Override
    public String studentRegistration(Student student) {
        studentRepository.save(student);
        return "Student registered successfully";
    }

	@Override
	public Student findByEmail(String Email) {
		// TODO Auto-generated method stub
		
		return studentRepository.findByEmail(Email);
	}
	
	
    
    
}
