package com.tw.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Zlien on 7/27/15.
 */

@Entity
@Table(name="CUSTOMER")
public class Customer {
    private int id;
    private String name;
    private List<Course> courses;

    public Customer() {
    }

    public Customer(String name) {
        this.name = name;
    }

    @Id
    @Column(name="Id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "Name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "CUSTOMER_COURSE",
            joinColumns = {@JoinColumn(name = "CustomerId")},
            inverseJoinColumns = {@JoinColumn(name = "CourseId")})
    public List<Course> getCourses() {
        return courses;
    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }
}
