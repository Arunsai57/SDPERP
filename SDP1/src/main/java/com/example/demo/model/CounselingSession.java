package com.example.demo.model;

import jakarta.persistence.*;

@Entity
@Table(name = "counseling_sessions") // Table for counseling session records
public class CounselingSession {

    @Id // Primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment for session ID
    @Column(name = "session_id", nullable = false, unique = true)
    private int id;

    @Column(name = "counselor_name", nullable = false, length = 100)
    private String counselorName;

    @Column(name = "session_date", nullable = false)
    private String sessionDate; // Store date as String for simplicity

    @Column(name = "session_notes", nullable = false, length = 1000)
    private String sessionNotes;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCounselorName() {
        return counselorName;
    }

    public void setCounselorName(String counselorName) {
        this.counselorName = counselorName;
    }

    public String getSessionDate() {
        return sessionDate;
    }

    public void setSessionDate(String sessionDate) {
        this.sessionDate = sessionDate;
    }

    public String getSessionNotes() {
        return sessionNotes;
    }

    public void setSessionNotes(String sessionNotes) {
        this.sessionNotes = sessionNotes;
    }

    // toString method for easy representation
    @Override
    public String toString() {
        return "CounselingSession{" +
                "id=" + id +
                ", counselorName='" + counselorName + '\'' +
                ", sessionDate='" + sessionDate + '\'' +
                ", sessionNotes='" + sessionNotes + '\'' +
                '}';
    }
}
