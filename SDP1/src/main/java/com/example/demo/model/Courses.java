package com.example.demo.model;

import jakarta.persistence.*;

@Entity
@Table(name = "Courses_table") // Specify the database table name
public class Courses {

    @Id // Primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment
    @Column(name = "course_id", nullable = false, unique = true)
    private int id;

    @Column(name = "course_name", nullable = false, length = 100)
    private String courseName;

    @Column(name = "course_credits", nullable = false)
    private int credits;

    @Column(name = "course_teacher", nullable = false, length = 100)
    private String teacher;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public int getCredits() {
        return credits;
    }

    public void setCredits(int credits) {
        this.credits = credits;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    // toString method
    @Override
    public String toString() {
        return "Courses{" +
                "id=" + id +
                ", courseName='" + courseName + '\'' +
                ", credits=" + credits +
                ", teacher='" + teacher + '\'' +
                '}';
    }
}
