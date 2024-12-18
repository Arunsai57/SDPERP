package com.example.demo.controller;

import com.example.demo.model.Student;
import com.example.demo.services.studentservice;
import com.example.demo.model.Courses;
import com.example.demo.model.Club;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {

    @Autowired
    private studentservice studentService;
    private Student sn;
    

    // Home Page
    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");  // Display the home.jsp page
        return mv;
    }

    // Signup Page
    @GetMapping("/signup")
    public ModelAndView signup() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("signup");  // Display the signup.jsp page
        return mv;
    }

    // Handle Signup Form Submission
    @PostMapping("/signup")
    public ModelAndView signupSubmit(String name, String gender, String dateOfBirth, String email, String password, String yearOfStudy, String contact) {
        ModelAndView mv = new ModelAndView();

        // Convert the string dateOfBirth to LocalDate
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate parsedDateOfBirth = LocalDate.parse(dateOfBirth, formatter);

        // Create a new student object and set the properties
        Student student = new Student();
        student.setName(name);
        student.setGender(gender);
        student.setDateOfBirth(parsedDateOfBirth);  // Set the LocalDate object
        student.setEmail(email);
        student.setPassword(password);
        student.setYearOfStudy(yearOfStudy);
        student.setContact(contact);

        // Use the service to save the new student
        studentService.studentRegistration(student);

        mv.addObject("message", "Signup successful! Welcome, " + name + ".");  // Display success message
        mv.setViewName("home");  // Redirect to home after successful signup
        return mv;
    }

    // Login Page
    @GetMapping("/login")
    public ModelAndView login() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("login");  // Display the login.jsp page
        return mv;
    }

    // Handle Login Form Submission
    @PostMapping("/login")
    public ModelAndView loginSubmit(String email, String password) {
        ModelAndView mv = new ModelAndView();

        // Validate the user's credentials
        Student student = studentService.findByEmail(email);
        sn=student;

        if (student == null) {
            mv.addObject("error", "Invalid email or password.");
            mv.setViewName("login");
            return mv;
        }

        // Check password
        if (student.getPassword().equals(password)) {
            mv.addObject("message", "Login successful! Welcome, " + student.getName() + ".");
            mv.addObject("student", student); // Pass student details to the view
            mv.setViewName("erphome");  // Redirect to erphome after successful login
        } else {
            mv.addObject("error", "Invalid email or password.");
            mv.setViewName("login");  // Stay on login page if password is incorrect
        }

        return mv;
    }

    // ERP Home Page
    @GetMapping("/erphome")
    public ModelAndView erpHome() {
        ModelAndView mv = new ModelAndView();
        Student student1 = sn;
		mv.addObject("student", student1 );
        mv.setViewName("erphome");  // Display the erphome.jsp page
        return mv;
    }
    
   

        

        // Method to display the profile
        @GetMapping("/Profile")
        public ModelAndView viewProfile(String email) {
            ModelAndView mv = new ModelAndView();
            
            // Fetch student details by email
            Student student = sn;
            
            // Pass student details to the view
            mv.addObject("student", student);
            mv.setViewName("Profile"); // This will refer to profile.jsp
            return mv;
        }
        
        @GetMapping("/attendanceregister")
        public ModelAndView attendanceregiste() {
            ModelAndView mv = new ModelAndView();
            
    		
            mv.setViewName("attendanceregister");  // Display the erphome.jsp page
            return mv;
        }
        @GetMapping("/careerchoice")
        public ModelAndView careerchoice() {
            ModelAndView mv = new ModelAndView();
            
    		
            mv.setViewName("careerchoice");  // Display the erphome.jsp page
            return mv;
        }
        // Courses Page
        @GetMapping("/courses")
        public ModelAndView coursesPage() {
            ModelAndView mv = new ModelAndView();

           

            mv.setViewName("courses"); // Display the courses.jsp page
            return mv;
        }
        @GetMapping("/logout")
        public ModelAndView logout() {
            // Perform any necessary logout logic here, such as invalidating the session or clearing authentication data
            ModelAndView mv = new ModelAndView();
            mv.setViewName("home");  // Redirect to home.jsp
            return mv;
        }
        @GetMapping("/counseling-diary")
        public ModelAndView counselingdiary() {
            ModelAndView mv = new ModelAndView();

           

            mv.setViewName("counseling-diary"); // Display the courses.jsp page
            return mv;
        }
        @GetMapping("/clubs")
        public ModelAndView clubs() {
            ModelAndView mv = new ModelAndView();

           

            mv.setViewName("clubs"); // Display the courses.jsp page
            return mv;
        }
        @GetMapping("/fee-payments")
        public ModelAndView feepayments() {
            ModelAndView mv = new ModelAndView();

           

            mv.setViewName("fee-payments"); // Display the courses.jsp page
            return mv;
        }
        @GetMapping("/my-cgpa")
        public ModelAndView mycgpa() {
            ModelAndView mv = new ModelAndView();

           

            mv.setViewName("my-cgpa"); // Display the courses.jsp page
            return mv;
        }
        
    }

