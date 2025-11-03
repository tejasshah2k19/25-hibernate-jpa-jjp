package com.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "students")
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class StudentEntity {

	@Id//pk 
	@GeneratedValue(strategy = GenerationType.IDENTITY)//auto increment
	Integer studentId;// primary key
	String firstName;
	String lastName;
	String email;
	String gender; 
	@Column(name="pwd",length = 120,nullable = false)
	String password;
	String mobileNum;
	String branch;
	String collegeName;
	String course;
	String batch;

}
