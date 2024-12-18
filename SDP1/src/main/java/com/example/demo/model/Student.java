package com.example.demo.model;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "Student_table") // Specify the database table name
public class Student {

    @Id // Primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment
    @Column(name = "student_id", nullable = false, unique = true)
    private int id;

    @Column(name = "student_name", nullable = false, length = 100)
    private String name;

    @Column(name = "student_gender", nullable = false, length = 10)
    private String gender;

    @Column(name = "student_dateofbirth", nullable = false)
    private LocalDate dateOfBirth; // Changed to LocalDate for better date handling

    @Column(name = "student_email", nullable = false, unique = true, length = 255)
    private String email;

    @Column(name = "student_password", nullable = false, length = 100)
    private String password;

    @Column(name = "student_yearofstudy", nullable = false, length = 10)
    private String yearOfStudy;

    @Column(name = "student_contact", nullable = false, unique = true, length = 20)
    private String contact;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getYearOfStudy() {
        return yearOfStudy;
    }

    public void setYearOfStudy(String yearOfStudy) {
        this.yearOfStudy = yearOfStudy;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
}
