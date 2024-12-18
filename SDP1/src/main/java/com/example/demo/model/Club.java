package com.example.demo.model;

import jakarta.persistence.*;

@Entity
@Table(name = "clubs") // Table for storing club details
public class Club {

    @Id // Primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment
    @Column(name = "club_id", nullable = false, unique = true)
    private int id;

    @Column(name = "club_name", nullable = false, length = 100)
    private String clubName;

    @Column(name = "club_description", nullable = false, length = 1000)
    private String clubDescription;

    @Column(name = "club_head", nullable = false, length = 100)
    private String clubHead;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

    public String getClubDescription() {
        return clubDescription;
    }

    public void setClubDescription(String clubDescription) {
        this.clubDescription = clubDescription;
    }

    public String getClubHead() {
        return clubHead;
    }

    public void setClubHead(String clubHead) {
        this.clubHead = clubHead;
    }

    // toString method for easy representation
    @Override
    public String toString() {
        return "Club{" +
                "id=" + id +
                ", clubName='" + clubName + '\'' +
                ", clubDescription='" + clubDescription + '\'' +
                ", clubHead='" + clubHead + '\'' +
                '}';
    }
}
